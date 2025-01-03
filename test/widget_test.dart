/*
 * @Author: tony-xiaobing.wang@cn.abb.com
 * @Date: 2024-12-30 20:27:54
 * @LastEditors: Tony
 * @LastEditTime: 2025-01-03 12:48:49
 * @FilePath: /stock-main/stock_quant_app/test/widget_test.dart
 * @Description: 
 * 
 * Copyright (c) 2025 by ${git_name_email}, All Rights Reserved. 
 */
// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:stock_quant_app/presentation/pages/market_screen.dart';
import 'package:stock_quant_app/domain/repositories/market_repository_provider.dart';
import 'package:stock_quant_app/domain/services/websocket_service_provider.dart';
import 'package:stock_quant_app/test/helpers/test_helper.dart';
import 'package:stock_quant_app/test/mocks/market_repository_mock.dart';
import 'package:stock_quant_app/test/mocks/websocket_service_mock.dart';

void main() {
  group('Market Screen Tests', () {
    testWidgets('Market screen shows data correctly', (tester) async {
      await tester.runAsync(() async {
        await TestHelper.pumpWidgetWithProviders(
          tester,
          const MarketScreen(),
          [
            // Provide mock implementations
            marketRepositoryProvider.overrideWithValue(MarketRepositoryMock()),
            webSocketServiceProvider.overrideWithValue(WebSocketServiceMock()),
          ],
        );

        // Verify initial state
        expect(find.text('Loading...'), findsOneWidget);

        // Wait for data to load
        await tester.pumpAndSettle();

        // Verify market data is displayed
        expect(find.text('BTC/USDT'), findsOneWidget);

        // Test real-time updates
        await tester.tap(find.text('Real-time'));
        await tester.pumpAndSettle();

        // Verify real-time data
        expect(find.text('Live'), findsOneWidget);
      });
    });
  });
}
