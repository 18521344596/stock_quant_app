import 'package:stock_quant_app/domain/enums/market_data_type.dart';

/// Entity class representing market data
class MarketDataEntity {
  /// Symbol identifier
  final String symbol;

  /// Current price
  final double price;

  /// Trading volume
  final double volume;

  /// Market data type
  final MarketDataType type;

  /// Timestamp of the data
  final DateTime timestamp;

  /// Creates a new [MarketDataEntity] instance
  const MarketDataEntity({
    required this.symbol,
    required this.price,
    required this.volume,
    required this.type,
    required this.timestamp,
  });
}
