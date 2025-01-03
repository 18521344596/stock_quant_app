/*
 * @Author: tony-xiaobing.wang@cn.abb.com
 * @Date: 2024-12-30 21:17:24
 * @LastEditors: Tony
 * @LastEditTime: 2025-01-03 14:08:13
 * @FilePath: /stock-main/stock_quant_app/lib/domain/repositories/market_repository_provider.dart
 * @Description: 
 * 
 * Copyright (c) 2025 by ${git_name_email}, All Rights Reserved. 
 */
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_quant_app/data/repositories/market_repository_impl.dart';
import 'package:stock_quant_app/domain/repositories/market_repository.dart';
import 'package:stock_quant_app/domain/services/websocket_service.dart';
import 'package:stock_quant_app/core/network/dio_client.dart';

part 'market_repository_provider.g.dart';

/// Provider for market repository
@riverpod
MarketRepository marketRepository(MarketRepositoryRef ref) {
  final dioClient = ref.watch(dioClientProvider);
  final webSocketService = ref.watch(webSocketServiceProvider);

  return MarketRepositoryImpl(
    dioClient,
    webSocketService,
  );
}
