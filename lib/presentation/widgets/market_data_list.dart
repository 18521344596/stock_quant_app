import 'package:flutter/material.dart';
import 'package:stock_quant_app/data/models/market_data.dart';
import 'package:stock_quant_app/presentation/widgets/market_data_tile.dart';

/// Widget for displaying a list of market data
class MarketDataList extends StatelessWidget {
  /// Market data list to display
  final List<MarketData> data;

  /// Creates a new [MarketDataList] instance
  const MarketDataList({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return MarketDataTile(data: data[index]);
      },
    );
  }
}
