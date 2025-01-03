/*
 * @Author: tony-xiaobing.wang@cn.abb.com
 * @Date: 2025-01-01 20:24:08
 * @LastEditors: Tony
 * @LastEditTime: 2025-01-03 11:35:13
 * @FilePath: /stock-main/stock_quant_app/lib/config/env.dart
 * @Description: 
 * 
 * Copyright (c) 2025 by ${git_name_email}, All Rights Reserved. 
 */
/// Environment configuration
class Env {
  const Env._();

  /// Base URL for API requests
  static const String apiBaseUrl = 'https://www.alphavantage.co/query';

  /// WebSocket URL for real-time data
  static const String wsUrl = 'wss://ws.example.com/market';

  /// Connection timeout duration
  static const Duration connectionTimeout = Duration(seconds: 30);

  /// Receive timeout duration
  static const Duration receiveTimeout = Duration(seconds: 30);

  /// Cache validity duration
  static const Duration cacheValidityDuration = Duration(minutes: 15);

  /// API key for authentication
  static const String apiKey = 'AK2O35BXMH40KL8T';

  /// Whether to enable debug logging
  static const bool enableDebugLogs = true;

  /// Default pagination page size
  static const int defaultPageSize = 20;

  /// Maximum items per page
  static const int maxPageSize = 100;
}
