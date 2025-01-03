import 'package:flutter/material.dart';
import 'package:stock_quant_app/domain/entities/stock_entity.dart';
import 'package:stock_quant_app/presentation/theme/app_colors.dart';

/// Widget to display market data in a tile format
class MarketDataTile extends StatelessWidget {
  /// Stock data to display
  final StockEntity stock;

  /// Creates a market data tile
  const MarketDataTile({required this.stock, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isPositive = stock.priceChangePercentage >= 0;

    return ListTile(
      title: Text(stock.symbol, style: theme.textTheme.titleMedium),
      subtitle: Text(
        '\$${stock.currentPrice.toStringAsFixed(2)}',
        style: theme.textTheme.bodyMedium,
      ),
      trailing: Text(
        '${isPositive ? '+' : ''}${stock.priceChangePercentage.toStringAsFixed(2)}%',
        style: theme.textTheme.bodyMedium?.copyWith(
          color: isPositive ? AppColors.positive : AppColors.negative,
        ),
      ),
    );
  }
}
