class AppConstants {
  // API 相关
  static const String baseUrl = 'https://api.example.com';
  static const int apiTimeout = 30000; // 30 seconds

  // 缓存相关
  static const String marketDataCacheKey = 'market_data_cache';
  static const String favoritesKey = 'favorites';

  // 分页相关
  static const int defaultPageSize = 20;

  // 市场数据相关
  static const List<String> popularSymbols = [
    'AAPL',
    'GOOGL',
    'MSFT',
    'AMZN',
    'TSLA'
  ];

  // 错误消息
  static const String networkError = 'Network connection error';
  static const String serverError = 'Server error occurred';
  static const String unknownError = 'An unknown error occurred';
}
