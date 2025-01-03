import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock_quant_app/data/services/trading_service_impl.dart';
import 'package:stock_quant_app/domain/services/trading_service.dart';
import 'package:stock_quant_app/core/network/dio_client_provider.dart';

final tradingServiceProvider = Provider<TradingService>((ref) {
  return TradingServiceImpl(
    ref.watch(dioClientProvider),
  );
});
