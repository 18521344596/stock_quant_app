import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_quant_app/domain/entities/trade_entity.dart';
import 'package:stock_quant_app/domain/enums/order_enums.dart';

part 'trade_record.freezed.dart';
part 'trade_record.g.dart';

/// Data model for trade records
@freezed
class TradeRecord with _$TradeRecord {
  const TradeRecord._();

  /// Creates a new trade record instance
  const factory TradeRecord({
    required String id,
    required String symbol,
    required double price,
    required double quantity,
    @JsonKey(
      fromJson: _orderSideFromJson,
      toJson: _orderSideToJson,
    )
    required OrderSide side,
    required DateTime timestamp,
  }) = _TradeRecord;

  /// Creates a TradeRecord from JSON
  factory TradeRecord.fromJson(Map<String, dynamic> json) =>
      _$TradeRecordFromJson(json);

  /// Creates a TradeRecord from entity
  factory TradeRecord.fromEntity(TradeEntity entity) => TradeRecord(
        id: entity.id,
        symbol: entity.symbol,
        price: entity.price,
        quantity: entity.quantity,
        side: entity.side,
        timestamp: entity.timestamp,
      );

  /// Converts to domain entity
  TradeEntity toEntity() => TradeEntity(
        id: id,
        symbol: symbol,
        price: price,
        quantity: quantity,
        side: side,
        timestamp: timestamp,
      );

  /// Total value of the trade
  double get value => price * quantity;
}

/// Converts JSON string to OrderSide enum
OrderSide _orderSideFromJson(String value) {
  switch (value.toLowerCase()) {
    case 'buy':
      return OrderSide.buy;
    case 'sell':
      return OrderSide.sell;
    default:
      throw ArgumentError('Invalid OrderSide value: $value');
  }
}

/// Converts OrderSide enum to JSON string
String _orderSideToJson(OrderSide side) {
  return side.name.toLowerCase();
}
