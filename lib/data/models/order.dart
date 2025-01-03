import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_quant_app/domain/entities/order_entity.dart';
import 'package:stock_quant_app/domain/enums/order_enums.dart';

part 'order.freezed.dart';
part 'order.g.dart';

/// Data model for trading orders
@freezed
class Order with _$Order {
  const Order._();

  /// Creates a new order instance
  const factory Order({
    required String id,
    required String symbol,
    required double price,
    required double quantity,
    required OrderType type,
    required OrderStatus status,
    required DateTime createdAt,
  }) = _Order;

  /// Creates an Order from JSON
  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  /// Creates an Order from entity
  factory Order.fromEntity(OrderEntity entity) => Order(
        id: entity.id,
        symbol: entity.symbol,
        price: entity.price,
        quantity: entity.quantity,
        type: entity.type,
        status: entity.status,
        createdAt: entity.createdAt,
      );

  /// Converts to domain entity
  OrderEntity toEntity() => OrderEntity(
        id: id,
        symbol: symbol,
        price: price,
        quantity: quantity,
        type: type,
        status: status,
        createdAt: createdAt,
      );
}
