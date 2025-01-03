/// Defines different ways to sort stock data
enum SortType {
  /// No sorting
  none,

  /// Sort by price change percentage
  priceChange,

  /// Sort by year-to-date change percentage
  ytdChange,

  /// Sort by trading volume
  volume,

  /// Sort by current price
  price,

  /// Sort by symbol
  symbol,
}

/// Extension methods for SortType
extension SortTypeX on SortType {
  /// Gets the display name for the sort type
  String get displayName {
    switch (this) {
      case SortType.none:
        return 'Default';
      case SortType.priceChange:
        return 'Change %';
      case SortType.ytdChange:
        return 'YTD %';
      case SortType.volume:
        return 'Volume';
      case SortType.price:
        return 'Price';
      case SortType.symbol:
        return 'Symbol';
    }
  }
}
