/*
 * @Author: tony-xiaobing.wang@cn.abb.com
 * @Date: 2025-01-02 21:54:18
 * @LastEditors: Tony
 * @LastEditTime: 2025-01-03 13:55:43
 * @FilePath: /stock-main/stock_quant_app/lib/domain/enums/order_enums.dart
 * @Description: 
 * 
 * Copyright (c) 2025 by ${git_name_email}, All Rights Reserved. 
 */
import 'package:flutter/material.dart';

/// Type of order
enum OrderType {
  /// Market order
  market,

  /// Limit order
  limit,

  /// Stop order
  stop;

  /// Gets display name for the order type
  String get displayName {
    switch (this) {
      case OrderType.market:
        return 'Market';
      case OrderType.limit:
        return 'Limit';
      case OrderType.stop:
        return 'Stop';
    }
  }
}

/// Side of order
enum OrderSide {
  /// Buy order
  buy,

  /// Sell order
  sell;

  /// Gets display name for the order side
  String get displayName {
    switch (this) {
      case OrderSide.buy:
        return 'Buy';
      case OrderSide.sell:
        return 'Sell';
    }
  }

  /// Gets color for the order side
  Color get color {
    switch (this) {
      case OrderSide.buy:
        return Colors.green;
      case OrderSide.sell:
        return Colors.red;
    }
  }
}

/// Status of order
enum OrderStatus {
  /// Order is pending
  pending,

  /// Order is filled
  filled,

  /// Order is cancelled
  cancelled;

  /// Gets display name for the order status
  String get displayName {
    switch (this) {
      case OrderStatus.pending:
        return 'Pending';
      case OrderStatus.filled:
        return 'Filled';
      case OrderStatus.cancelled:
        return 'Cancelled';
    }
  }

  /// Gets color for the order status
  Color get color {
    switch (this) {
      case OrderStatus.pending:
        return Colors.orange;
      case OrderStatus.filled:
        return Colors.green;
      case OrderStatus.cancelled:
        return Colors.red;
    }
  }
}
