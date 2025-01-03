import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_quant_app/domain/entities/strategy_performance.dart';

part 'strategy_performance.freezed.dart';
part 'strategy_performance.g.dart';

@freezed
class StrategyPerformance with _$StrategyPerformance {
  const StrategyPerformance._();

  const factory StrategyPerformance({
    required String strategyId,
    required double totalReturn,
    required double annualizedReturn,
    required double maxDrawdown,
    required double sharpeRatio,
    required int totalTrades,
    required double winRate,
    required DateTime startDate,
    required DateTime lastUpdated,
    Map<String, double>? monthlyReturns,
  }) = _StrategyPerformance;

  factory StrategyPerformance.fromJson(Map<String, dynamic> json) =>
      _$StrategyPerformanceFromJson(json);

  StrategyPerformanceEntity toEntity() => StrategyPerformanceEntity(
        strategyId: strategyId,
        totalReturn: totalReturn,
        annualizedReturn: annualizedReturn,
        maxDrawdown: maxDrawdown,
        sharpeRatio: sharpeRatio,
        totalTrades: totalTrades,
        winRate: winRate,
        startDate: startDate,
        lastUpdated: lastUpdated,
        monthlyReturns: monthlyReturns,
      );
}
