import 'package:stock_quant_app/data/models/order.dart';
import 'package:stock_quant_app/domain/services/trading_service.dart';
import 'package:stock_quant_app/core/network/dio_client.dart';
import 'package:stock_quant_app/domain/enums/order_enums.dart';
import 'package:rxdart/rxdart.dart';

class TradingServiceImpl implements TradingService {
  final DioClient _dioClient;
  final _ordersSubject = BehaviorSubject<List<Order>>();

  TradingServiceImpl(this._dioClient);

  @override
  Future<Order> placeOrder(Order order) async {
    try {
      final response = await _dioClient.post(
        '/orders',
        data: order.toJson(),
      );
      final newOrder = Order.fromJson(response.data);

      // 更新订单列表
      final currentOrders = await _ordersSubject.first;
      _ordersSubject.add([newOrder, ...currentOrders]);

      return newOrder;
    } catch (e) {
      throw Exception('下单失败: $e');
    }
  }

  @override
  Future<void> cancelOrder(String orderId) async {
    try {
      await _dioClient.delete('/orders/$orderId');

      // 更新订单状态
      final currentOrders = await _ordersSubject.first;
      final updatedOrders = currentOrders.map((order) {
        if (order.id == orderId) {
          return order.copyWith(status: OrderStatus.cancelled);
        }
        return order;
      }).toList();

      _ordersSubject.add(updatedOrders);
    } catch (e) {
      throw Exception('取消订单失败: $e');
    }
  }

  @override
  Stream<List<Order>> getOrders() {
    _fetchOrders();
    return _ordersSubject.stream;
  }

  Future<void> _fetchOrders() async {
    try {
      final response = await _dioClient.get('/orders');
      final orders =
          (response.data as List).map((json) => Order.fromJson(json)).toList();
      _ordersSubject.add(orders);
    } catch (e) {
      _ordersSubject.addError('获取订单失败: $e');
    }
  }

  void dispose() {
    _ordersSubject.close();
  }
}
