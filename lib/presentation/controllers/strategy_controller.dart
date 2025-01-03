import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock_quant_app/data/models/strategy.dart';
import 'package:stock_quant_app/domain/repositories/strategy_repository.dart';
import 'package:stock_quant_app/domain/repositories/strategy_repository_provider.dart';

/// 策略列表状态提供者
final strategyListProvider =
    StateNotifierProvider<StrategyController, AsyncValue<List<Strategy>>>(
        (ref) {
  return StrategyController(ref.watch(strategyRepositoryProvider));
});

/// 策略控制器
///
/// 负责管理策略的创建、更新和状态切换
class StrategyController extends StateNotifier<AsyncValue<List<Strategy>>> {
  final StrategyRepository _repository;

  StrategyController(this._repository) : super(const AsyncValue.loading()) {
    loadStrategies();
  }

  /// 加载策略列表
  Future<void> loadStrategies() async {
    try {
      state = const AsyncValue.loading();
      final strategies = await _repository.getStrategies();
      state = AsyncValue.data(strategies
          .map((e) => Strategy(
                id: e.id,
                name: e.name,
                description: e.description,
                isActive: e.isActive,
                parameters: e.parameters,
                createdAt: e.createdAt,
              ))
          .toList());
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  /// 创建新策略
  ///
  /// [strategy] 策略数据
  Future<void> createStrategy(Strategy strategy) async {
    try {
      await _repository.createStrategy(strategy.toEntity());
      await loadStrategies();
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  /// 切换策略状态
  ///
  /// [id] 策略ID
  Future<void> toggleStrategy(String id) async {
    try {
      final currentStrategies = state.value ?? [];
      final index = currentStrategies.indexWhere((s) => s.id == id);
      if (index == -1) return;

      final strategy = currentStrategies[index];
      await _repository.updateStrategy(
        strategy.copyWith(isActive: !strategy.isActive).toEntity(),
      );
      await loadStrategies();
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
