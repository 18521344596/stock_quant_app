import 'package:mockito/annotations.dart';
import 'package:stock_quant_app/domain/repositories/market_repository.dart';
import 'package:stock_quant_app/domain/services/websocket_service.dart';

@GenerateMocks([
  MarketRepository,
  WebSocketService,
])
void main() {}
