import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock_quant_app/data/repositories/strategy_repository_impl.dart';
import 'package:stock_quant_app/domain/repositories/strategy_repository.dart';
import 'package:stock_quant_app/core/network/dio_client_provider.dart';

/// 策略仓库提供者
final strategyRepositoryProvider = Provider<StrategyRepository>((ref) {
  return StrategyRepositoryImpl(
    ref.watch(dioClientProvider),
  );
});
