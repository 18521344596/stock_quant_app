import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_quant_app/data/models/market_data.dart';
import 'package:stock_quant_app/domain/entities/stock_entity.dart';

part 'stock_model.freezed.dart';
part 'stock_model.g.dart';

/// Data model for stock information
@freezed
class StockModel with _$StockModel {
  const StockModel._();

  /// Creates a new stock model instance
  const factory StockModel({
    required String symbol,
    required String name,
    required double currentPrice,
    required double priceChange,
    required double priceChangePercentage,
    required double ytdChangePercentage,
    required double volume,
    required DateTime lastUpdate,
  }) = _StockModel;

  /// Creates a StockModel from JSON
  factory StockModel.fromJson(Map<String, dynamic> json) =>
      _$StockModelFromJson(json);

  /// Creates a StockModel from MarketData
  factory StockModel.fromMarketData(MarketData data) => StockModel(
        symbol: data.symbol,
        name: data.name ?? '',
        currentPrice: data.price,
        priceChange: data.priceChange ?? 0,
        priceChangePercentage: data.priceChangePercentage ?? 0,
        ytdChangePercentage: data.ytdChangePercentage ?? 0,
        volume: data.volume ?? 0,
        lastUpdate: data.timestamp,
      );

  /// Converts to domain entity
  StockEntity toEntity() => StockEntity(
        symbol: symbol,
        name: name,
        currentPrice: currentPrice,
        priceChange: priceChange,
        priceChangePercentage: priceChangePercentage,
        ytdChangePercentage: ytdChangePercentage,
        volume: volume,
        lastUpdate: lastUpdate,
      );
}
