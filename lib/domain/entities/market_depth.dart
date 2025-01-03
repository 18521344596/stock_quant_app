class PriceLevelEntity {
  final double price;
  final double quantity;

  const PriceLevelEntity({
    required this.price,
    required this.quantity,
  });

  double get volume => price * quantity;
}

class MarketDepthEntity {
  final String symbol;
  final List<PriceLevelEntity> bids;
  final List<PriceLevelEntity> asks;
  final DateTime timestamp;

  const MarketDepthEntity({
    required this.symbol,
    required this.bids,
    required this.asks,
    required this.timestamp,
  });

  double get spread => asks.first.price - bids.first.price;
  double get spreadPercentage => spread / bids.first.price * 100;
}
