import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_quant_app/domain/entities/position.dart';

part 'position.freezed.dart';
part 'position.g.dart';

@freezed
class Position with _$Position {
  const Position._();

  const factory Position({
    required String symbol,
    required int quantity,
    required double averagePrice,
    required double currentPrice,
    @Default(0.0) double profit,
    @Default(0.0) double profitRatio,
    required DateTime updatedAt,
  }) = _Position;

  factory Position.fromJson(Map<String, dynamic> json) =>
      _$PositionFromJson(json);

  PositionEntity toEntity() => PositionEntity(
        symbol: symbol,
        quantity: quantity,
        averagePrice: averagePrice,
        currentPrice: currentPrice,
        profit: profit,
        profitRatio: profitRatio,
        updatedAt: updatedAt,
      );

  double get marketValue => quantity * currentPrice;
  double get cost => quantity * averagePrice;
}
