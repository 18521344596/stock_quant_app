import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_quant_app/data/services/websocket_service_impl.dart';
import 'package:stock_quant_app/domain/services/websocket_service.dart';

part 'websocket_service_provider.g.dart';

@riverpod
WebSocketService webSocketService(WebSocketServiceRef ref) {
  return WebSocketServiceImpl();
}
