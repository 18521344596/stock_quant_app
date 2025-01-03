// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_depth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PriceLevelImpl _$$PriceLevelImplFromJson(Map<String, dynamic> json) =>
    _$PriceLevelImpl(
      price: (json['price'] as num).toDouble(),
      quantity: (json['quantity'] as num).toDouble(),
    );

Map<String, dynamic> _$$PriceLevelImplToJson(_$PriceLevelImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'quantity': instance.quantity,
    };

_$MarketDepthImpl _$$MarketDepthImplFromJson(Map<String, dynamic> json) =>
    _$MarketDepthImpl(
      symbol: json['symbol'] as String,
      bids: (json['bids'] as List<dynamic>)
          .map((e) => PriceLevel.fromJson(e as Map<String, dynamic>))
          .toList(),
      asks: (json['asks'] as List<dynamic>)
          .map((e) => PriceLevel.fromJson(e as Map<String, dynamic>))
          .toList(),
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$MarketDepthImplToJson(_$MarketDepthImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'bids': instance.bids,
      'asks': instance.asks,
      'timestamp': instance.timestamp.toIso8601String(),
    };
