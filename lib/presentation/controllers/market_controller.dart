/*
 * @Author: tony-xiaobing.wang@cn.abb.com
 * @Date: 2024-12-30 21:08:50
 * @LastEditors: Tony
 * @LastEditTime: 2025-01-03 13:55:58
 * @FilePath: /stock-main/stock_quant_app/lib/presentation/controllers/market_controller.dart
 * @Description: 
 * 
 * Copyright (c) 2025 by ${git_name_email}, All Rights Reserved. 
 */
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_quant_app/domain/entities/stock_entity.dart';
import 'package:stock_quant_app/domain/repositories/market_repository.dart';
import 'package:stock_quant_app/domain/states/market_state.dart';

part 'market_controller.g.dart';

/// Controller for market operations
@riverpod
class MarketController extends _$MarketController {
  late final MarketRepository _repository;

  @override
  MarketState build() {
    _repository = ref.read(marketRepositoryProvider);
    return const MarketState.loading();
  }

  /// Fetches market data
  Future<void> fetchMarketData() async {
    try {
      state = const MarketState.loading();
      final stocks = await _repository.getStocks();
      state = MarketState.loaded(stocks: stocks);
    } catch (e) {
      state = MarketState.error(e.toString());
    }
  }

  /// Updates market data
  void updateMarketData(List<StockEntity> stocks) {
    try {
      state = MarketState.loaded(stocks: stocks);
    } catch (e) {
      state = MarketState.error(e.toString());
    }
  }
}
