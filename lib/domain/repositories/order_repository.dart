import 'package:stock_quant_app/domain/entities/order_entity.dart';

/// Repository interface for order operations
abstract class OrderRepository {
  /// Gets all orders
  Future<List<OrderEntity>> getOrders();

  /// Places a new order
  Future<OrderEntity> placeOrder(OrderEntity order);

  /// Cancels an order
  Future<void> cancelOrder(String orderId);

  /// Gets order by ID
  Future<OrderEntity?> getOrder(String orderId);

  /// Gets order history for a symbol
  Future<List<OrderEntity>> getOrderHistory(String symbol);

  /// Gets active orders
  Future<List<OrderEntity>> getActiveOrders();
}
