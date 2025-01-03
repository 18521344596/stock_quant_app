import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock_quant_app/domain/enums/sort_type.dart';
import 'package:stock_quant_app/domain/entities/stock_entity.dart';
import 'package:stock_quant_app/domain/states/market_state.dart';
import 'package:stock_quant_app/presentation/controllers/market_controller.dart';

/// Provider for market sort state
final marketSortProvider = StateProvider<(SortType, bool)>((ref) {
  return (SortType.none, true);
});

/// Provider for sorted market data
final sortedMarketDataProvider = Provider<MarketState>((ref) {
  final state = ref.watch(marketControllerProvider);
  final (sortType, ascending) = ref.watch(marketSortProvider);

  if (state is! MarketLoaded) return state;

  final stocks = List.of(state.stocks);
  if (sortType == SortType.none) return state;

  stocks.sort((a, b) {
    final double valueA;
    final double valueB;

    switch (sortType) {
      case SortType.priceChange:
        valueA = a.priceChangePercentage;
        valueB = b.priceChangePercentage;
      case SortType.ytdChange:
        valueA = a.ytdChangePercentage;
        valueB = b.ytdChangePercentage;
      case SortType.volume:
        valueA = a.volume;
        valueB = b.volume;
      case SortType.price:
        valueA = a.currentPrice;
        valueB = b.currentPrice;
      case SortType.symbol:
        return ascending
            ? a.symbol.compareTo(b.symbol)
            : b.symbol.compareTo(a.symbol);
      case SortType.none:
        return 0;
    }

    return ascending ? valueA.compareTo(valueB) : valueB.compareTo(valueA);
  });

  return MarketState.loaded(stocks);
});

/// Provider for hot stocks
final hotStocksProvider = Provider<AsyncValue<List<StockEntity>>>((ref) {
  final state = ref.watch(sortedMarketDataProvider);
  return state.when(
    loading: () => const AsyncValue.loading(),
    error: (message) => AsyncValue.error(message, StackTrace.current),
    loaded: (stocks) => AsyncValue.data(stocks),
  );
});

/// Provider for watchlist stocks
final watchlistStocksProvider = Provider<AsyncValue<List<StockEntity>>>((ref) {
  final state = ref.watch(sortedMarketDataProvider);
  return state.when(
    loading: () => const AsyncValue.loading(),
    error: (message) => AsyncValue.error(message, StackTrace.current),
    loaded: (stocks) => AsyncValue.data(stocks),
  );
});

/// Provider for market overview
final marketOverviewProvider = Provider<AsyncValue<List<StockEntity>>>((ref) {
  final state = ref.watch(sortedMarketDataProvider);
  return state.when(
    loading: () => const AsyncValue.loading(),
    error: (message) => AsyncValue.error(message, StackTrace.current),
    loaded: (stocks) => AsyncValue.data(stocks),
  );
});
