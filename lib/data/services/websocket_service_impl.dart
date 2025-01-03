/*
 * @Author: tony-xiaobing.wang@cn.abb.com
 * @Date: 2025-01-02 22:18:02
 * @LastEditors: Tony
 * @LastEditTime: 2025-01-03 14:05:21
 * @FilePath: /stock-main/stock_quant_app/lib/data/services/websocket_service_impl.dart
 * @Description: 
 * 
 * Copyright (c) 2025 by ${git_name_email}, All Rights Reserved. 
 */
import 'dart:async';
import 'dart:convert';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:stock_quant_app/core/services/logger_service.dart';
import 'package:stock_quant_app/data/models/market_data.dart';
import 'package:stock_quant_app/domain/services/websocket_service.dart';
import 'package:stock_quant_app/config/env.dart';

/// Implementation of [WebSocketService]
class WebSocketServiceImpl implements WebSocketService {
  WebSocketChannel? _channel;
  final Map<String, StreamController<MarketData>> _controllers = {};
  final Logger _logger = LoggerService.getLogger('WebSocketServiceImpl');
  bool _isConnected = false;

  @override
  Future<void> connect() async {
    if (_isConnected) return;

    try {
      _channel = WebSocketChannel.connect(
        Uri.parse(Env.wsUrl),
      );

      _channel!.stream.listen(
        (message) => _handleMessage(jsonDecode(message as String)),
        onError: (error) {
          _logger.severe('WebSocket error', error);
          _reconnect();
        },
        onDone: () {
          _logger.info('WebSocket connection closed');
          _reconnect();
        },
      );

      _isConnected = true;
      _logger.info('WebSocket connected');
    } catch (e) {
      _logger.severe('Failed to connect to WebSocket', e);
      rethrow;
    }
  }

  @override
  Future<void> disconnect() async {
    await _channel?.sink.close();
    for (var controller in _controllers.values) {
      await controller.close();
    }
    _controllers.clear();
    _isConnected = false;
  }

  @override
  Stream<MarketData> subscribeToMarketData(String symbol) {
    if (!_isConnected) {
      throw Exception('WebSocket not connected');
    }

    if (!_controllers.containsKey(symbol)) {
      _controllers[symbol] = StreamController<MarketData>.broadcast();
      _channel!.sink.add(jsonEncode({
        'type': 'subscribe',
        'symbol': symbol,
      }));
    }

    return _controllers[symbol]!.stream;
  }

  @override
  Future<void> unsubscribeFromMarketData(String symbol) async {
    if (_controllers.containsKey(symbol)) {
      _channel?.sink.add(jsonEncode({
        'type': 'unsubscribe',
        'symbol': symbol,
      }));
      await _controllers[symbol]?.close();
      _controllers.remove(symbol);
    }
  }

  void _handleMessage(Map<String, dynamic> data) {
    try {
      final marketData = MarketData.fromWebSocket(data);
      _controllers[marketData.symbol]?.add(marketData);
    } catch (e) {
      _logger.warning('Failed to parse market data', e);
    }
  }

  Future<void> _reconnect() async {
    _isConnected = false;
    await Future.delayed(const Duration(seconds: 5));
    if (!_isConnected) {
      await connect();
      // Resubscribe to all symbols
      for (var symbol in _controllers.keys) {
        _channel?.sink.add(jsonEncode({
          'type': 'subscribe',
          'symbol': symbol,
        }));
      }
    }
  }
}
