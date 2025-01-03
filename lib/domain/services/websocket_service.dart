import '../../data/models/market_data.dart';

/// Service interface for WebSocket operations
abstract class WebSocketService {
  /// Connects to the WebSocket server
  Future<void> connect();

  /// Disconnects from the WebSocket server
  Future<void> disconnect();

  /// Subscribes to market data for a symbol
  ///
  /// Returns a stream of [MarketData]
  Stream<MarketData> subscribeToMarketData(String symbol);

  /// Unsubscribes from market data for a symbol
  Future<void> unsubscribeFromMarketData(String symbol);
}
