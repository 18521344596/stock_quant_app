/*
 * @Author: tony-xiaobing.wang@cn.abb.com
 * @Date: 2025-01-03 13:20:56
 * @LastEditors: Tony
 * @LastEditTime: 2025-01-03 14:07:16
 * @FilePath: /stock-main/stock_quant_app/lib/presentation/routes/app_router.dart
 * @Description: 
 * 
 * Copyright (c) 2025 by ${git_name_email}, All Rights Reserved. 
 */
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    // TODO: Add your routes here
    AutoRoute(page: MarketOverviewPage, initial: true),
    AutoRoute(page: StockDetailPage),
    AutoRoute(page: TradingPage),
  ],
)
class $AppRouter {}
