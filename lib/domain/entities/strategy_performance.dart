class StrategyPerformanceEntity {
  final String strategyId;
  final double totalReturn;
  final double annualizedReturn;
  final double maxDrawdown;
  final double sharpeRatio;
  final int totalTrades;
  final double winRate;
  final DateTime startDate;
  final DateTime lastUpdated;
  final Map<String, double>? monthlyReturns;

  const StrategyPerformanceEntity({
    required this.strategyId,
    required this.totalReturn,
    required this.annualizedReturn,
    required this.maxDrawdown,
    required this.sharpeRatio,
    required this.totalTrades,
    required this.winRate,
    required this.startDate,
    required this.lastUpdated,
    this.monthlyReturns,
  });

  bool get isPositive => totalReturn > 0;
  bool get isGoodPerformance => sharpeRatio > 1.0;
}
