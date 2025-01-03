import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_data.freezed.dart';
part 'market_data.g.dart';

/// Data model for real-time market data
@freezed
class MarketData with _$MarketData {
  /// Creates a new market data instance
  const factory MarketData({
    required String symbol,
    String? name,
    required double price,
    double? priceChange,
    double? priceChangePercentage,
    double? ytdChangePercentage,
    double? volume,
    required DateTime timestamp,
  }) = _MarketData;

  /// Creates a MarketData from JSON
  factory MarketData.fromJson(Map<String, dynamic> json) =>
      _$MarketDataFromJson(json);

  /// Creates a MarketData from WebSocket data
  factory MarketData.fromWebSocket(Map<String, dynamic> data) => MarketData(
        symbol: data['s'] as String,
        name: data['n'] as String?,
        price: (data['p'] as num).toDouble(),
        priceChange: data['pc'] != null ? (data['pc'] as num).toDouble() : null,
        priceChangePercentage:
            data['pcp'] != null ? (data['pcp'] as num).toDouble() : null,
        ytdChangePercentage:
            data['ycp'] != null ? (data['ycp'] as num).toDouble() : null,
        timestamp: DateTime.fromMillisecondsSinceEpoch(data['t'] as int),
      );
}
