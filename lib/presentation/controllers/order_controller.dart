import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_quant_app/domain/entities/order_entity.dart';
import 'package:stock_quant_app/domain/repositories/order_repository.dart';
import 'package:stock_quant_app/domain/repositories/order_repository_provider.dart';

part 'order_controller.g.dart';

/// Controller for order operations
@riverpod
class OrderController extends _$OrderController {
  late final OrderRepository _repository;

  @override
  AsyncValue<List<OrderEntity>> build() {
    _repository = ref.read(orderRepositoryProvider);
    return const AsyncValue.loading();
  }

  /// Places a new order
  Future<void> placeOrder(OrderEntity order) async {
    try {
      state = const AsyncValue.loading();
      await _repository.placeOrder(order);
      await _refreshOrders();
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  /// Cancels an order
  Future<void> cancelOrder(String orderId) async {
    try {
      await _repository.cancelOrder(orderId);
      await _refreshOrders();
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  /// Refreshes the order list
  Future<void> _refreshOrders() async {
    try {
      final orders = await _repository.getOrders();
      state = AsyncValue.data(orders);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }
}
