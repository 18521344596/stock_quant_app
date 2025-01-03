import 'package:stock_quant_app/domain/enums/order_enums.dart';

/// Entity representing a trade in the system
class TradeEntity {
  /// Unique identifier
  final String id;

  /// Stock symbol
  final String symbol;

  /// Trade price
  final double price;

  /// Trade quantity
  final double quantity;

  /// Trade side (buy/sell)
  final OrderSide side;

  /// Trade timestamp
  final DateTime timestamp;

  /// Creates a new trade entity
  const TradeEntity({
    required this.id,
    required this.symbol,
    required this.price,
    required this.quantity,
    required this.side,
    required this.timestamp,
  });

  /// Total value of the trade
  double get value => price * quantity;

  /// Creates a copy of this trade with given fields replaced
  TradeEntity copyWith({
    String? id,
    String? symbol,
    double? price,
    double? quantity,
    OrderSide? side,
    DateTime? timestamp,
  }) {
    return TradeEntity(
      id: id ?? this.id,
      symbol: symbol ?? this.symbol,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      side: side ?? this.side,
      timestamp: timestamp ?? this.timestamp,
    );
  }
}
