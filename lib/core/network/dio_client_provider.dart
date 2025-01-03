/*
 * @Author: tony-xiaobing.wang@cn.abb.com
 * @Date: 2024-12-31 18:15:37
 * @LastEditors: Tony
 * @LastEditTime: 2025-01-03 14:08:57
 * @FilePath: /stock-main/stock_quant_app/lib/core/network/dio_client_provider.dart
 * @Description: 
 * 
 * Copyright (c) 2025 by ${git_name_email}, All Rights Reserved. 
 */
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:stock_quant_app/core/network/dio_client.dart';

part 'dio_client_provider.g.dart';

/// Provider for DioClient
@riverpod
DioClient dioClient(DioClientRef ref) {
  return DioClient();
}
