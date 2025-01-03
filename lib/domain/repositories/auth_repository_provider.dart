/*
 * @Author: tony-xiaobing.wang@cn.abb.com
 * @Date: 2024-12-31 18:10:02
 * @LastEditors: Tony
 * @LastEditTime: 2024-12-31 18:21:32
 * @FilePath: /stock-main/stock_quant_app/lib/domain/repositories/auth_repository_provider.dart
 * @Description: 
 * 
 * Copyright (c) 2024 by ${git_name_email}, All Rights Reserved. 
 */
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_quant_app/data/repositories/auth_repository_impl.dart';
import 'package:stock_quant_app/domain/repositories/auth_repository.dart';
import 'package:stock_quant_app/core/network/dio_client.dart';

part 'auth_repository_provider.g.dart';

/// Provider for authentication repository
@riverpod
AuthRepository authRepository(Ref ref) {
  final dioClient = ref.watch(dioClientProvider);
  return AuthRepositoryImpl(dioClient);
}
