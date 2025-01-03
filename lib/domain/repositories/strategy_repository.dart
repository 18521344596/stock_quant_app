import 'package:stock_quant_app/domain/entities/strategy.dart';

/// Repository interface for strategy operations
abstract class StrategyRepository {
  /// Gets all strategies
  Future<List<StrategyEntity>> getStrategies();

  /// Gets a strategy by ID
  Future<StrategyEntity> getStrategy(String id);

  /// Creates a new strategy
  Future<StrategyEntity> createStrategy(StrategyEntity strategy);

  /// Updates an existing strategy
  Future<StrategyEntity> updateStrategy(StrategyEntity strategy);

  /// Deletes a strategy
  Future<void> deleteStrategy(String id);

  /// Toggles strategy active state
  Future<StrategyEntity> toggleStrategy(String id);
}
