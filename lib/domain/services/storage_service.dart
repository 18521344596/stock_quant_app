import 'package:stock_quant_app/data/models/market_data.dart';

abstract class StorageService {
  Future<void> saveData<T>(String key, T data);
  T? getData<T>(String key);
  Future<void> removeData(String key);
  Future<void> clear();

  // 市场数据特定方法
  Future<void> saveMarketData(String key, List<MarketData> data);
  List<MarketData> getMarketData(String key);

  // 收藏夹特定方法
  Future<void> saveFavorites(List<String> symbols);
  List<String> getFavorites();
}
