/*
 * @Author: tony-xiaobing.wang@cn.abb.com
 * @Date: 2024-12-31 18:15:44
 * @LastEditors: Tony
 * @LastEditTime: 2024-12-31 18:25:22
 * @FilePath: /stock-main/stock_quant_app/lib/domain/services/trading_service.dart
 * @Description: 
 * 
 * Copyright (c) 2024 by ${git_name_email}, All Rights Reserved. 
 */
import 'package:stock_quant_app/data/models/order.dart';

abstract class TradingService {
  /// 下单
  Future<Order> placeOrder(Order order);

  /// 取消订单
  Future<void> cancelOrder(String orderId);

  /// 获取订单列表流
  Stream<List<Order>> getOrders();
}
