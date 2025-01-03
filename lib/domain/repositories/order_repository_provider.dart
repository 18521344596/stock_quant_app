import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock_quant_app/data/repositories/order_repository_impl.dart';
import 'package:stock_quant_app/domain/repositories/order_repository.dart';

/// Provider for order repository
final orderRepositoryProvider = Provider<OrderRepository>((ref) {
  return OrderRepositoryImpl();
});
