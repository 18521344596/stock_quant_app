import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_quant_app/domain/entities/stock_entity.dart';

part 'market_state.freezed.dart';

/// State for market data
@freezed
class MarketState with _$MarketState {
  /// Loading state
  const factory MarketState.loading() = MarketLoading;

  /// Error state with message
  const factory MarketState.error(String message) = MarketError;

  /// Loaded state with stock data
  const factory MarketState.loaded({
    required List<StockEntity> stocks,
  }) = MarketLoaded;
}
