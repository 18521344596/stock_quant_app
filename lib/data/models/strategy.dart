import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_quant_app/domain/entities/strategy.dart';

part 'strategy.freezed.dart';
part 'strategy.g.dart';

/// Data model representing a trading strategy
@freezed
class Strategy with _$Strategy {
  const Strategy._();

  /// Creates a new strategy model
  const factory Strategy({
    /// Unique identifier
    required String id,

    /// Strategy name
    required String name,

    /// Strategy description
    required String description,

    /// Whether the strategy is active
    @Default(false) bool isActive,

    /// Strategy parameters
    required Map<String, dynamic> parameters,

    /// Strategy creation timestamp
    required DateTime createdAt,
  }) = _Strategy;

  /// Creates a strategy model from JSON
  factory Strategy.fromJson(Map<String, dynamic> json) =>
      _$StrategyFromJson(json);

  /// Creates a strategy model from entity
  factory Strategy.fromEntity(StrategyEntity entity) => Strategy(
        id: entity.id,
        name: entity.name,
        description: entity.description,
        isActive: entity.isActive,
        parameters: entity.parameters,
        createdAt: entity.createdAt,
      );

  /// Converts to entity
  StrategyEntity toEntity() => StrategyEntity(
        id: id,
        name: name,
        description: description,
        isActive: isActive,
        parameters: parameters,
        createdAt: createdAt,
      );
}
