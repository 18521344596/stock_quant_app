/*
 * @Author: tony-xiaobing.wang@cn.abb.com
 * @Date: 2024-12-30 21:19:58
 * @LastEditors: Tony
 * @LastEditTime: 2025-01-03 13:55:53
 * @FilePath: /stock-main/stock_quant_app/lib/presentation/widgets/order_list_item.dart
 * @Description: 
 * 
 * Copyright (c) 2025 by ${git_name_email}, All Rights Reserved. 
 */
import 'package:flutter/material.dart';
import 'package:stock_quant_app/domain/entities/order_entity.dart';
import 'package:stock_quant_app/presentation/theme/app_colors.dart';

/// Widget to display an order item in a list
class OrderListItem extends StatelessWidget {
  /// The order to display
  final OrderEntity order;

  /// Callback when cancel is pressed
  final VoidCallback? onCancel;

  /// Creates a new order list item
  const OrderListItem({
    required this.order,
    this.onCancel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      title: Text(
        '${order.symbol} - ${order.type.displayName}',
        style: theme.textTheme.titleMedium,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '\$${order.price.toStringAsFixed(2)} x ${order.quantity.toStringAsFixed(2)}',
            style: theme.textTheme.bodySmall,
          ),
          Text(
            order.status.displayName,
            style: theme.textTheme.bodySmall?.copyWith(
              color: order.status.color,
            ),
          ),
        ],
      ),
      trailing: order.canCancel
          ? IconButton(
              icon: const Icon(Icons.cancel),
              onPressed: onCancel,
              color: AppColors.negative,
            )
          : null,
    );
  }
}
