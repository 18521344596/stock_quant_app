import 'package:stock_quant_app/domain/enums/order_enums.dart';

/// Trade record entity representing a completed trade
class TradeRecord {
  /// Unique identifier for the trade
  final String id;

  /// Trading symbol (e.g., 'AAPL', 'BTC/USD')
  final String symbol;

  /// Order type (market, limit, etc.)
  final OrderType type;

  /// Trade direction (buy/sell)
  final OrderSide side;

  /// Execution price
  final double price;

  /// Trade quantity
  final double quantity;

  /// Trade timestamp
  final DateTime executedAt;

  /// Commission fee
  final double commission;

  const TradeRecord({
    required this.id,
    required this.symbol,
    required this.type,
    required this.side,
    required this.price,
    required this.quantity,
    required this.executedAt,
    required this.commission,
  });

  /// Calculate the total value of the trade
  double get total => price * quantity;

  /// Calculate the net value after commission
  double get netValue => total - commission;
}
