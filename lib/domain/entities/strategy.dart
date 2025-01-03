/// Entity class representing a trading strategy
class StrategyEntity {
  /// Unique identifier
  final String id;

  /// Strategy name
  final String name;

  /// Strategy description
  final String description;

  /// Whether the strategy is active
  final bool isActive;

  /// Strategy parameters
  final Map<String, dynamic> parameters;

  /// Strategy creation timestamp
  final DateTime createdAt;

  /// Creates a new [StrategyEntity] instance
  const StrategyEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.isActive,
    required this.parameters,
    required this.createdAt,
  });
}
