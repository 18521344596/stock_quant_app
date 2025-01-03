/*
 * @Author: tony-xiaobing.wang@cn.abb.com
 * @Date: 2025-01-03 14:04:29
 * @LastEditors: Tony
 * @LastEditTime: 2025-01-03 14:07:36
 * @FilePath: /stock-main/stock_quant_app/lib/presentation/pages/stock_detail_page.dart
 * @Description: 
 * 
 * Copyright (c) 2025 by ${git_name_email}, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class StockDetailPage extends StatelessWidget {
  const StockDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Stock Detail'),
      ),
    );
  }
}
