import 'package:stock_quant_app/domain/entities/stock_entity.dart';
import 'package:stock_quant_app/domain/repositories/market_repository.dart';
import 'package:stock_quant_app/domain/services/market_service.dart';

/// Implementation of [MarketService]
class MarketServiceImpl implements MarketService {
  final MarketRepository _repository;

  /// Creates a new market service implementation
  const MarketServiceImpl(this._repository);

  @override
  Future<List<StockEntity>> getMarketData() async {
    try {
      final stocks = await _repository.getStocks();
      return stocks;
    } catch (e) {
      throw Exception('Failed to get market data: $e');
    }
  }

  @override
  Future<List<StockEntity>> getHotStocks() async {
    try {
      final stocks = await _repository.getHotStocks();
      return stocks;
    } catch (e) {
      throw Exception('Failed to get hot stocks: $e');
    }
  }

  @override
  Future<List<StockEntity>> getWatchlist() async {
    try {
      final stocks = await _repository.getWatchlist();
      return stocks;
    } catch (e) {
      throw Exception('Failed to get watchlist: $e');
    }
  }

  @override
  Future<Map<String, dynamic>> getMarketOverview() async {
    try {
      final overview = await _repository.getMarketOverview();
      return overview;
    } catch (e) {
      throw Exception('Failed to get market overview: $e');
    }
  }
}
