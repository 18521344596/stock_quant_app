import 'package:stock_quant_app/domain/enums/order_enums.dart';

/// Entity representing an order in the system
class OrderEntity {
  /// Unique identifier
  final String id;

  /// Stock symbol
  final String symbol;

  /// Order price
  final double price;

  /// Order quantity
  final double quantity;

  /// Order type
  final OrderType type;

  /// Order status
  final OrderStatus status;

  /// Creation timestamp
  final DateTime createdAt;

  /// Creates a new order entity
  const OrderEntity({
    required this.id,
    required this.symbol,
    required this.price,
    required this.quantity,
    required this.type,
    required this.status,
    required this.createdAt,
  });

  /// Total value of the order
  double get totalValue => price * quantity;

  /// Whether the order is active
  bool get isActive => status == OrderStatus.pending;

  /// Whether the order can be cancelled
  bool get canCancel => status == OrderStatus.pending;

  /// Creates a copy of this order with given fields replaced
  OrderEntity copyWith({
    String? id,
    String? symbol,
    double? price,
    double? quantity,
    OrderType? type,
    OrderStatus? status,
    DateTime? createdAt,
  }) {
    return OrderEntity(
      id: id ?? this.id,
      symbol: symbol ?? this.symbol,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      type: type ?? this.type,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
