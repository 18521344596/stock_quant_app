// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PositionImpl _$$PositionImplFromJson(Map<String, dynamic> json) =>
    _$PositionImpl(
      symbol: json['symbol'] as String,
      quantity: (json['quantity'] as num).toInt(),
      averagePrice: (json['averagePrice'] as num).toDouble(),
      currentPrice: (json['currentPrice'] as num).toDouble(),
      profit: (json['profit'] as num?)?.toDouble() ?? 0.0,
      profitRatio: (json['profitRatio'] as num?)?.toDouble() ?? 0.0,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$PositionImplToJson(_$PositionImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'quantity': instance.quantity,
      'averagePrice': instance.averagePrice,
      'currentPrice': instance.currentPrice,
      'profit': instance.profit,
      'profitRatio': instance.profitRatio,
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
