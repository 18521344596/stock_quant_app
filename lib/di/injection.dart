import 'package:get_it/get_it.dart';
import 'package:stock_quant_app/core/network/dio_client.dart';
import 'package:stock_quant_app/core/services/logger_service.dart';
import 'package:stock_quant_app/data/repositories/auth_repository_impl.dart';
import 'package:stock_quant_app/data/repositories/market_repository_impl.dart';
import 'package:stock_quant_app/domain/repositories/auth_repository.dart';
import 'package:stock_quant_app/domain/repositories/market_repository.dart';
import 'package:stock_quant_app/domain/services/websocket_service.dart';
import 'package:stock_quant_app/data/services/websocket_service_impl.dart';

/// Global service locator
final getIt = GetIt.instance;

/// Initialize dependency injection
void initializeDependencies() {
  // Core
  getIt.registerLazySingleton(() => DioClient());
  getIt.registerLazySingleton(() => LoggerService());

  // Services
  getIt.registerLazySingleton<WebSocketService>(
    () => WebSocketServiceImpl(),
  );

  // Repositories
  getIt.registerLazySingleton<MarketRepository>(
    () => MarketRepositoryImpl(
      getIt<DioClient>(),
      getIt<WebSocketService>(),
    ),
  );

  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      getIt<DioClient>(),
    ),
  );
}
