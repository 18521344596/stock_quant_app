// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trade_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TradeRecordImpl _$$TradeRecordImplFromJson(Map<String, dynamic> json) =>
    _$TradeRecordImpl(
      id: json['id'] as String,
      symbol: json['symbol'] as String,
      price: (json['price'] as num).toDouble(),
      quantity: (json['quantity'] as num).toDouble(),
      side: _orderSideFromJson(json['side'] as String),
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$TradeRecordImplToJson(_$TradeRecordImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'price': instance.price,
      'quantity': instance.quantity,
      'side': _orderSideToJson(instance.side),
      'timestamp': instance.timestamp.toIso8601String(),
    };
