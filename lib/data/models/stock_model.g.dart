// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockModelImpl _$$StockModelImplFromJson(Map<String, dynamic> json) =>
    _$StockModelImpl(
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      currentPrice: (json['currentPrice'] as num).toDouble(),
      priceChange: (json['priceChange'] as num).toDouble(),
      priceChangePercentage: (json['priceChangePercentage'] as num).toDouble(),
      ytdChangePercentage: (json['ytdChangePercentage'] as num).toDouble(),
      volume: (json['volume'] as num).toDouble(),
      lastUpdate: DateTime.parse(json['lastUpdate'] as String),
    );

Map<String, dynamic> _$$StockModelImplToJson(_$StockModelImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'currentPrice': instance.currentPrice,
      'priceChange': instance.priceChange,
      'priceChangePercentage': instance.priceChangePercentage,
      'ytdChangePercentage': instance.ytdChangePercentage,
      'volume': instance.volume,
      'lastUpdate': instance.lastUpdate.toIso8601String(),
    };
