/*
 * @Author: tony-xiaobing.wang@cn.abb.com
 * @Date: 2024-12-27 15:47:34
 * @LastEditors: Tony
 * @LastEditTime: 2025-01-03 14:07:22
 * @FilePath: /stock-main/stock_quant_app/lib/main.dart
 * @Description: 
 * 
 * Copyright (c) 2025 by ${git_name_email}, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock_quant_app/presentation/routes/app_router.dart';
import 'package:stock_quant_app/presentation/theme/app_theme.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Stock Quant',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
