import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_quant_app/data/services/market_service_impl.dart';
import 'package:stock_quant_app/domain/repositories/market_repository.dart';
import 'package:stock_quant_app/domain/services/market_service.dart';

part 'market_service_provider.g.dart';

/// Provider for market service
@riverpod
MarketService marketService(Ref ref) {
  final repository = ref.watch(marketRepositoryProvider);
  return MarketServiceImpl(repository);
}
