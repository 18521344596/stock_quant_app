import 'package:stock_quant_app/domain/entities/stock_entity.dart';
import 'package:stock_quant_app/domain/repositories/market_repository.dart';

/// Mock implementation of [MarketRepository] for testing
class MarketRepositoryMock implements MarketRepository {
  @override
  Future<List<StockEntity>> getHotStocks() async {
    return [
      _createMockStock('AAPL'),
      _createMockStock('GOOGL'),
    ];
  }

  @override
  Future<List<StockEntity>> getWatchlistStocks() async {
    return [
      _createMockStock('TSLA'),
      _createMockStock('MSFT'),
    ];
  }

  @override
  Future<List<StockEntity>> getMarketOverview() async {
    return [
      _createMockStock('BTC/USDT'),
      _createMockStock('ETH/USDT'),
    ];
  }

  @override
  Future<void> addToWatchlist(String symbol) async {
    // Do nothing in mock
  }

  @override
  Future<void> removeFromWatchlist(String symbol) async {
    // Do nothing in mock
  }

  @override
  Stream<StockEntity> getStockUpdates(String symbol) {
    return Stream.periodic(
      const Duration(seconds: 1),
      (i) => _createMockStock(symbol, priceChange: i.toDouble()),
    );
  }

  /// Creates a mock stock entity for testing
  StockEntity _createMockStock(String symbol, {double priceChange = 0}) {
    return StockEntity(
      symbol: symbol,
      name: 'Mock $symbol',
      currentPrice: 100.0 + priceChange,
      priceChange: priceChange,
      priceChangePercentage: priceChange,
      ytdChangePercentage: 10.0,
      volume: 1000.0,
      lastUpdate: DateTime.now(),
    );
  }
}
