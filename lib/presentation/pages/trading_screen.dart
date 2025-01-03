import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock_quant_app/domain/states/market_state.dart';
import 'package:stock_quant_app/presentation/controllers/market_controller.dart';
import 'package:stock_quant_app/presentation/widgets/price_chart.dart';

/// Screen for basic trading operations
class TradingScreen extends ConsumerWidget {
  /// Creates a new trading screen
  const TradingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final marketState = ref.watch(marketControllerProvider);

    return switch (marketState) {
      MarketLoading() => const Center(
          child: CircularProgressIndicator(),
        ),
      MarketLoaded(:final stocks) when stocks.isNotEmpty => Column(
          children: [
            Expanded(child: PriceChart(data: stocks.first)),
            const SizedBox(height: 16),
            _buildSimpleTradeButtons(),
          ],
        ),
      MarketError(:final message) => Center(
          child: Text('Error: $message'),
        ),
      _ => const Center(
          child: Text('No data available'),
        ),
    };
  }

  Widget _buildSimpleTradeButtons() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                // TODO: Implement basic buy in phase 2
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              child: const Text('BUY'),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                // TODO: Implement basic sell in phase 2
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: const Text('SELL'),
            ),
          ),
        ],
      ),
    );
  }
}
