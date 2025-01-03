// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'strategy_performance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StrategyPerformanceImpl _$$StrategyPerformanceImplFromJson(
        Map<String, dynamic> json) =>
    _$StrategyPerformanceImpl(
      strategyId: json['strategyId'] as String,
      totalReturn: (json['totalReturn'] as num).toDouble(),
      annualizedReturn: (json['annualizedReturn'] as num).toDouble(),
      maxDrawdown: (json['maxDrawdown'] as num).toDouble(),
      sharpeRatio: (json['sharpeRatio'] as num).toDouble(),
      totalTrades: (json['totalTrades'] as num).toInt(),
      winRate: (json['winRate'] as num).toDouble(),
      startDate: DateTime.parse(json['startDate'] as String),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      monthlyReturns: (json['monthlyReturns'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$$StrategyPerformanceImplToJson(
        _$StrategyPerformanceImpl instance) =>
    <String, dynamic>{
      'strategyId': instance.strategyId,
      'totalReturn': instance.totalReturn,
      'annualizedReturn': instance.annualizedReturn,
      'maxDrawdown': instance.maxDrawdown,
      'sharpeRatio': instance.sharpeRatio,
      'totalTrades': instance.totalTrades,
      'winRate': instance.winRate,
      'startDate': instance.startDate.toIso8601String(),
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'monthlyReturns': instance.monthlyReturns,
    };
