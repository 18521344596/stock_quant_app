import 'package:stock_quant_app/domain/entities/stock_entity.dart';

/// Repository interface for market operations
abstract class MarketRepository {
  /// Gets list of stocks
  Future<List<StockEntity>> getStocks();

  /// Gets stock by symbol
  Future<StockEntity> getStock(String symbol);

  /// Gets market overview data
  Future<Map<String, dynamic>> getMarketOverview();

  /// Gets hot stocks
  Future<List<StockEntity>> getHotStocks();

  /// Gets user's watchlist
  Future<List<StockEntity>> getWatchlist();

  /// Adds stock to watchlist
  Future<void> addToWatchlist(String symbol);

  /// Removes stock from watchlist
  Future<void> removeFromWatchlist(String symbol);
}
