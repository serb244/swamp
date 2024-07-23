import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {

  SharedPreferencesService() {  }

  dynamic getDynamic(String key) async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    var value = prefs.get(key);
    return value;
  }

  get(String key, [Type type = String]) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (type == String) {
      return prefs.getString(key);
    } else if (type == int) {
      return prefs.getInt(key) ;
    } else if (type == double) {
      return prefs.getDouble(key) ;
    } else if (type == bool) {
      return prefs.getBool(key) ;
    } else if (type == List<String>) {
      return prefs.getStringList(key) ;
    } else {
      throw UnsupportedError("Unsupported type");
    }
  }

  Future<void> delete(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  Future<bool> deleteAll() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
   return await prefs.clear();
  }

  Future<void> save(String key, dynamic value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //TODO check type of value is correct
    debugPrint('Saving $key: $value');
    if (value is String) {
      await prefs.setString(key, value);
    } else if (value is int) {
      await prefs.setInt(key, value);
    } else if (value is double) {
      await prefs.setDouble(key, value);
    } else if (value is bool) {
      await prefs.setBool(key, value);
    } else if (value is List<String>) {
      await prefs.setStringList(key, value);
    }
  }
}
