/*
 * @Author: tony-xiaobing.wang@cn.abb.com
 * @Date: 2024-12-31 17:53:19
 * @LastEditors: Tony
 * @LastEditTime: 2024-12-31 18:00:28
 * @FilePath: /stock-main/stock_quant_app/test/golden/market_depth_test.dart
 * @Description: 
 * 
 * Copyright (c) 2024 by ${git_name_email}, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock_quant_app/presentation/widgets/market_depth.dart';

void main() {
  testWidgets('Market depth widget shows correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(
          home: MarketDepth(symbol: 'AAPL'),
        ),
      ),
    );

    expect(find.text('Market Depth'), findsOneWidget);
  });
}
