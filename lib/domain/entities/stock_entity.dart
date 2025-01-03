/// Entity representing a stock in the system
class StockEntity {
  /// Stock symbol
  final String symbol;

  /// Stock name
  final String name;

  /// Current price
  final double currentPrice;

  /// Price change
  final double priceChange;

  /// Price change percentage
  final double priceChangePercentage;

  /// Year-to-date change percentage
  final double ytdChangePercentage;

  /// Trading volume
  final double volume;

  /// Last update timestamp
  final DateTime lastUpdate;

  /// Creates a new stock entity
  const StockEntity({
    required this.symbol,
    required this.name,
    required this.currentPrice,
    required this.priceChange,
    required this.priceChangePercentage,
    required this.ytdChangePercentage,
    required this.volume,
    required this.lastUpdate,
  });

  /// Creates a copy with some fields replaced
  StockEntity copyWith({
    String? symbol,
    String? name,
    double? currentPrice,
    double? priceChange,
    double? priceChangePercentage,
    double? ytdChangePercentage,
    double? volume,
    DateTime? lastUpdate,
  }) {
    return StockEntity(
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
      currentPrice: currentPrice ?? this.currentPrice,
      priceChange: priceChange ?? this.priceChange,
      priceChangePercentage:
          priceChangePercentage ?? this.priceChangePercentage,
      ytdChangePercentage: ytdChangePercentage ?? this.ytdChangePercentage,
      volume: volume ?? this.volume,
      lastUpdate: lastUpdate ?? this.lastUpdate,
    );
  }

  /// Creates a stock entity from JSON
  factory StockEntity.fromJson(Map<String, dynamic> json) {
    return StockEntity(
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      currentPrice: (json['currentPrice'] as num).toDouble(),
      priceChange: (json['priceChange'] as num).toDouble(),
      priceChangePercentage: (json['priceChangePercentage'] as num).toDouble(),
      ytdChangePercentage: (json['ytdChangePercentage'] as num).toDouble(),
      volume: (json['volume'] as num).toDouble(),
      lastUpdate: DateTime.parse(json['lastUpdate'] as String),
    );
  }
}
