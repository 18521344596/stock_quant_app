// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarketDataImpl _$$MarketDataImplFromJson(Map<String, dynamic> json) =>
    _$MarketDataImpl(
      symbol: json['symbol'] as String,
      name: json['name'] as String?,
      price: (json['price'] as num).toDouble(),
      priceChange: (json['priceChange'] as num?)?.toDouble(),
      priceChangePercentage:
          (json['priceChangePercentage'] as num?)?.toDouble(),
      ytdChangePercentage: (json['ytdChangePercentage'] as num?)?.toDouble(),
      volume: (json['volume'] as num?)?.toDouble(),
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$MarketDataImplToJson(_$MarketDataImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'price': instance.price,
      'priceChange': instance.priceChange,
      'priceChangePercentage': instance.priceChangePercentage,
      'ytdChangePercentage': instance.ytdChangePercentage,
      'volume': instance.volume,
      'timestamp': instance.timestamp.toIso8601String(),
    };
