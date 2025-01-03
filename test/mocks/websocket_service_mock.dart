import 'dart:async';
import 'package:stock_quant_app/data/models/market_data.dart';
import 'package:stock_quant_app/domain/services/websocket_service.dart';

/// Mock implementation of [WebSocketService] for testing
class WebSocketServiceMock implements WebSocketService {
  bool _isConnected = false;

  @override
  Future<void> connect() async {
    _isConnected = true;
  }

  @override
  Future<void> disconnect() async {
    _isConnected = false;
  }

  @override
  Stream<MarketData> subscribeToMarketData(String symbol) {
    if (!_isConnected) {
      throw Exception('WebSocket not connected');
    }

    return Stream.periodic(
      const Duration(seconds: 1),
      (i) => MarketData(
        symbol: symbol,
        price: 100.0 + i,
        volume: 1000.0 + i,
        timestamp: DateTime.now(),
      ),
    );
  }

  @override
  Future<void> unsubscribeFromMarketData(String symbol) async {
    // Do nothing in mock
  }
}
