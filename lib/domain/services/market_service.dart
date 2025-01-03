import 'package:stock_quant_app/domain/entities/stock_entity.dart';

/// Service interface for market operations
abstract class MarketService {
  /// Gets market data
  Future<List<StockEntity>> getMarketData();

  /// Gets hot stocks
  Future<List<StockEntity>> getHotStocks();

  /// Gets user's watchlist
  Future<List<StockEntity>> getWatchlist();

  /// Gets market overview data
  Future<Map<String, dynamic>> getMarketOverview();
}
