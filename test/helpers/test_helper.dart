/*
 * @Author: tony-xiaobing.wang@cn.abb.com
 * @Date: 2025-01-01 21:23:52
 * @LastEditors: Tony
 * @LastEditTime: 2025-01-03 09:44:41
 * @FilePath: /stock-main/stock_quant_app/test/helpers/test_helper.dart
 * @Description: 
 * 
 * Copyright (c) 2025 by ${git_name_email}, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

/// Helper class for testing
class TestHelper {
  /// Sets up the test environment
  static Future<void> setupTest() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await loadAppFonts();
  }

  /// Pumps a widget with necessary providers for testing
  ///
  /// [tester] The widget tester
  /// [widget] The widget to test
  /// [overrides] The provider overrides to use
  static Future<void> pumpWidgetWithProviders(
    WidgetTester tester,
    Widget widget,
    List<Override> overrides,
  ) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: overrides,
        child: MaterialApp(
          home: widget,
        ),
      ),
    );
    await tester.pump();
  }
}
