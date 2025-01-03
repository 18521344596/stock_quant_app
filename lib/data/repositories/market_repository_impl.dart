import 'package:stock_quant_app/core/network/dio_client.dart';
import 'package:stock_quant_app/domain/entities/stock_entity.dart';
import 'package:stock_quant_app/domain/repositories/market_repository.dart';
import 'package:stock_quant_app/domain/services/websocket_service.dart';

/// Implementation of [MarketRepository]
class MarketRepositoryImpl implements MarketRepository {
  final DioClient _dioClient;
  final WebSocketService _webSocketService;

  /// Creates a new market repository implementation
  const MarketRepositoryImpl(this._dioClient, this._webSocketService);

  @override
  Future<List<StockEntity>> getStocks() async {
    try {
      final response = await _dioClient.get('/stocks');
      return (response.data as List)
          .map((json) => StockEntity.fromJson(json))
          .toList();
    } catch (e) {
      throw Exception('Failed to fetch stocks: $e');
    }
  }

  @override
  Future<StockEntity> getStock(String symbol) async {
    try {
      final response = await _dioClient.get('/stocks/$symbol');
      return StockEntity.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to fetch stock: $e');
    }
  }

  @override
  Future<Map<String, dynamic>> getMarketOverview() async {
    try {
      final response = await _dioClient.get('/market/overview');
      return response.data as Map<String, dynamic>;
    } catch (e) {
      throw Exception('Failed to fetch market overview: $e');
    }
  }

  @override
  Future<List<StockEntity>> getHotStocks() async {
    try {
      final response = await _dioClient.get('/market/hot-stocks');
      return (response.data as List)
          .map((json) => StockEntity.fromJson(json))
          .toList();
    } catch (e) {
      throw Exception('Failed to fetch hot stocks: $e');
    }
  }

  @override
  Future<List<StockEntity>> getWatchlist() async {
    try {
      final response = await _dioClient.get('/market/watchlist');
      return (response.data as List)
          .map((json) => StockEntity.fromJson(json))
          .toList();
    } catch (e) {
      throw Exception('Failed to fetch watchlist: $e');
    }
  }

  @override
  Future<void> addToWatchlist(String symbol) async {
    try {
      await _dioClient.post('/market/watchlist/add', data: {'symbol': symbol});
    } catch (e) {
      throw Exception('Failed to add to watchlist: $e');
    }
  }

  @override
  Future<void> removeFromWatchlist(String symbol) async {
    try {
      await _dioClient.delete('/market/watchlist/remove/$symbol');
    } catch (e) {
      throw Exception('Failed to remove from watchlist: $e');
    }
  }
}
