import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock_quant_app/presentation/controllers/market_controller.dart';

/// Widget that handles market data streaming
class MarketDataStream extends ConsumerStatefulWidget {
  /// Creates a market data stream widget
  const MarketDataStream({super.key});

  @override
  ConsumerState<MarketDataStream> createState() => _MarketDataStreamState();
}

class _MarketDataStreamState extends ConsumerState<MarketDataStream> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(marketControllerProvider.notifier).fetchMarketData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
