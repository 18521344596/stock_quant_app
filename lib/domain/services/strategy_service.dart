import 'package:stock_quant_app/domain/entities/strategy.dart';

abstract class StrategyService {
  Future<List<StrategyEntity>> getStrategies();
  Future<StrategyEntity> getStrategy(String id);
  Future<StrategyEntity> createStrategy(StrategyEntity strategy);
  Future<StrategyEntity> updateStrategy(StrategyEntity strategy);
  Future<void> deleteStrategy(String id);
  Future<StrategyEntity> toggleStrategy(String id);
}
