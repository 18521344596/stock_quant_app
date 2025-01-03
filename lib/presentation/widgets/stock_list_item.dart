import 'package:flutter/material.dart';
import 'package:stock_quant_app/domain/entities/stock_entity.dart';
import 'package:stock_quant_app/presentation/theme/app_colors.dart';

/// Widget to display a stock item in a list
class StockListItem extends StatelessWidget {
  /// The stock data to display
  final StockEntity stock;

  /// Callback when the item is tapped
  final VoidCallback? onTap;

  /// Creates a new stock list item
  const StockListItem({
    required this.stock,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isPositive = stock.priceChangePercentage >= 0;

    return ListTile(
      onTap: onTap,
      title: Text(
        stock.symbol,
        style: theme.textTheme.titleMedium,
      ),
      subtitle: Text(
        stock.name,
        style: theme.textTheme.bodySmall,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            '\$${stock.currentPrice.toStringAsFixed(2)}',
            style: theme.textTheme.bodyLarge,
          ),
          Text(
            '${isPositive ? '+' : ''}${stock.priceChangePercentage.toStringAsFixed(2)}%',
            style: theme.textTheme.bodySmall?.copyWith(
              color: isPositive ? AppColors.positive : AppColors.negative,
            ),
          ),
        ],
      ),
    );
  }
}
