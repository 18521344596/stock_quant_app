/// Entity representing market data in the domain layer
class MarketDataEntity {
  /// The trading symbol
  final String symbol;

  /// The current price
  final double price;

  /// The trading volume
  final double volume;

  /// The timestamp of the data
  final DateTime timestamp;

  /// Creates a new market data entity
  const MarketDataEntity({
    required this.symbol,
    required this.price,
    required this.volume,
    required this.timestamp,
  });

  /// Creates a copy of this entity with optional new values
  MarketDataEntity copyWith({
    String? symbol,
    double? price,
    double? volume,
    DateTime? timestamp,
  }) {
    return MarketDataEntity(
      symbol: symbol ?? this.symbol,
      price: price ?? this.price,
      volume: volume ?? this.volume,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  @override
  String toString() {
    return 'MarketDataEntity(symbol: $symbol, price: $price, volume: $volume, timestamp: $timestamp)';
  }
}
