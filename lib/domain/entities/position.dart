class PositionEntity {
  final String symbol;
  final int quantity;
  final double averagePrice;
  final double currentPrice;
  final double profit;
  final double profitRatio;
  final DateTime updatedAt;

  const PositionEntity({
    required this.symbol,
    required this.quantity,
    required this.averagePrice,
    required this.currentPrice,
    required this.profit,
    required this.profitRatio,
    required this.updatedAt,
  });

  double get marketValue => quantity * currentPrice;
  double get cost => quantity * averagePrice;
  bool get isProfit => profit > 0;
}
