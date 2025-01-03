import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_quant_app/domain/entities/market_depth.dart';

part 'market_depth.freezed.dart';
part 'market_depth.g.dart';

@freezed
class PriceLevel with _$PriceLevel {
  const PriceLevel._();

  const factory PriceLevel({
    required double price,
    required double quantity,
  }) = _PriceLevel;

  factory PriceLevel.fromJson(Map<String, dynamic> json) =>
      _$PriceLevelFromJson(json);

  PriceLevelEntity toEntity() => PriceLevelEntity(
        price: price,
        quantity: quantity,
      );
}

@freezed
class MarketDepth with _$MarketDepth {
  const MarketDepth._();

  const factory MarketDepth({
    required String symbol,
    required List<PriceLevel> bids,
    required List<PriceLevel> asks,
    required DateTime timestamp,
  }) = _MarketDepth;

  factory MarketDepth.fromJson(Map<String, dynamic> json) =>
      _$MarketDepthFromJson(json);

  MarketDepthEntity toEntity() => MarketDepthEntity(
        symbol: symbol,
        bids: bids.map((bid) => bid.toEntity()).toList(),
        asks: asks.map((ask) => ask.toEntity()).toList(),
        timestamp: timestamp,
      );
}
