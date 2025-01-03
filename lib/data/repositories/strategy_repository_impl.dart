import 'package:stock_quant_app/core/network/dio_client.dart';
import 'package:stock_quant_app/data/models/strategy.dart';
import 'package:stock_quant_app/domain/entities/strategy.dart';
import 'package:stock_quant_app/domain/repositories/strategy_repository.dart';

/// Implementation of [StrategyRepository]
class StrategyRepositoryImpl implements StrategyRepository {
  final DioClient _client;

  /// Creates a new [StrategyRepositoryImpl] instance
  const StrategyRepositoryImpl(this._client);

  @override
  Future<List<StrategyEntity>> getStrategies() async {
    try {
      final response = await _client.get<Map<String, dynamic>>('/strategies');
      final List<dynamic> data = response.data?['strategies'] ?? [];
      return data.map((json) => Strategy.fromJson(json).toEntity()).toList();
    } catch (e) {
      throw Exception('Failed to fetch strategies: $e');
    }
  }

  @override
  Future<StrategyEntity> getStrategy(String id) async {
    try {
      final response =
          await _client.get<Map<String, dynamic>>('/strategies/$id');
      return Strategy.fromJson(response.data!).toEntity();
    } catch (e) {
      throw Exception('Failed to fetch strategy: $e');
    }
  }

  @override
  Future<StrategyEntity> createStrategy(StrategyEntity strategy) async {
    try {
      final response = await _client.post<Map<String, dynamic>>(
        '/strategies',
        data: Strategy.fromEntity(strategy).toJson(),
      );
      return Strategy.fromJson(response.data!).toEntity();
    } catch (e) {
      throw Exception('Failed to create strategy: $e');
    }
  }

  @override
  Future<StrategyEntity> updateStrategy(StrategyEntity strategy) async {
    try {
      final response = await _client.put<Map<String, dynamic>>(
        '/strategies/${strategy.id}',
        data: Strategy.fromEntity(strategy).toJson(),
      );
      return Strategy.fromJson(response.data!).toEntity();
    } catch (e) {
      throw Exception('Failed to update strategy: $e');
    }
  }

  @override
  Future<void> deleteStrategy(String id) async {
    try {
      await _client.delete('/strategies/$id');
    } catch (e) {
      throw Exception('Failed to delete strategy: $e');
    }
  }

  @override
  Future<StrategyEntity> toggleStrategy(String id) async {
    try {
      final response = await _client.post<Map<String, dynamic>>(
        '/strategies/$id/toggle',
      );
      return Strategy.fromJson(response.data!).toEntity();
    } catch (e) {
      throw Exception('Failed to toggle strategy: $e');
    }
  }
}
