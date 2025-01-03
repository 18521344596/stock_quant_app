import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stock_quant_app/data/models/market_data.dart';
import 'package:stock_quant_app/domain/services/storage_service.dart';

class StorageServiceImpl implements StorageService {
  final SharedPreferences _prefs;

  StorageServiceImpl(this._prefs);

  @override
  Future<void> saveData<T>(String key, T data) async {
    final jsonString = jsonEncode(data);
    await _prefs.setString(key, jsonString);
  }

  @override
  T? getData<T>(String key) {
    final jsonString = _prefs.getString(key);
    if (jsonString == null) return null;
    return jsonDecode(jsonString) as T;
  }

  @override
  Future<void> removeData(String key) async {
    await _prefs.remove(key);
  }

  @override
  Future<void> clear() async {
    await _prefs.clear();
  }

  @override
  Future<void> saveMarketData(String key, List<MarketData> data) async {
    final jsonList = data.map((item) => item.toJson()).toList();
    await saveData(key, jsonList);
  }

  @override
  List<MarketData> getMarketData(String key) {
    final jsonList = getData<List>(key);
    if (jsonList == null) return [];
    return jsonList
        .map((json) => MarketData.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<void> saveFavorites(List<String> symbols) async {
    await saveData('favorites', symbols);
  }

  @override
  List<String> getFavorites() {
    final data = getData<List>('favorites');
    if (data == null) return [];
    return data.cast<String>();
  }
}
