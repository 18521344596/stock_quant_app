import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock_quant_app/domain/entities/stock_entity.dart';
import 'package:stock_quant_app/presentation/controllers/market_controller.dart';
import 'package:stock_quant_app/presentation/widgets/market_data_tile.dart';

/// Tab showing user's watchlist
class MyWatchlistTab extends ConsumerWidget {
  /// Creates a watchlist tab
  const MyWatchlistTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final marketState = ref.watch(marketControllerProvider);

    return marketState.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (message) => Center(child: Text('Error: $message')),
      loaded: (stocks) => _buildWatchlist(stocks),
    );
  }

  Widget _buildWatchlist(List<StockEntity> stocks) {
    if (stocks.isEmpty) {
      return const Center(child: Text('No stocks in watchlist'));
    }

    return ListView.builder(
      itemCount: stocks.length,
      itemBuilder: (context, index) => MarketDataTile(stock: stocks[index]),
    );
  }
}
