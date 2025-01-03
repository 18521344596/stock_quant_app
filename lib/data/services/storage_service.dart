import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:stock_quant_app/data/models/market_data.dart';

class StorageService {
  final SharedPreferences _prefs;

  StorageService(this._prefs);

  Future<void> saveMarketData(String key, List<MarketData> data) async {
    final jsonString = json.encode(data.map((e) => e.toJson()).toList());
    await _prefs.setString(key, jsonString);
  }

  Future<List<MarketData>> getMarketData(String key) async {
    final jsonString = _prefs.getString(key);
    if (jsonString == null) return [];

    final List<dynamic> jsonList = json.decode(jsonString);
    return jsonList.map((json) => MarketData.fromJson(json)).toList();
  }

  Future<void> saveFavorites(List<String> symbols) async {
    await _prefs.setStringList('favorites', symbols);
  }

  List<String> getFavorites() {
    return _prefs.getStringList('favorites') ?? [];
  }
}
