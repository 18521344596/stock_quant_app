/// Represents different types of market data
enum MarketDataType {
  /// Real-time market data
  realTime,

  /// Historical market data
  historical,

  /// Aggregated market data
  aggregated,

  /// Tick by tick market data
  tickByTick,
}

/// 市场数据类型扩展
extension MarketDataTypeX on MarketDataType {
  String get name {
    switch (this) {
      case MarketDataType.realTime:
        return 'realtime';
      case MarketDataType.historical:
        return 'historical';
      case MarketDataType.aggregated:
        return 'aggregated';
      case MarketDataType.tickByTick:
        return 'tick';
    }
  }
}
