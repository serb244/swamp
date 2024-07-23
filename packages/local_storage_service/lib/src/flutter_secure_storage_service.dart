import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class FlutterSecureStorageService {
  final FlutterSecureStorage storage;

  FlutterSecureStorageService() : storage = const FlutterSecureStorage();

  Future<String?> get(String key) async {
    String? value = await storage.read(key: key);
    return value;
  }

  // Read all values
  Future<Map<String, String>> getAll(String key) async {
    Map<String, String> allValues = await storage.readAll();
    return allValues;
  }

  Future<void> delete(String key) async {
    await storage.delete(key: key);
    String? value = await storage.read(key: key);
    print(value);
  }

  Future<bool> deleteAll() async {
    await storage.deleteAll();
    return true;
  }

  Future<void> save(String key, dynamic value) async {
    await storage.write(key: key, value: value);
  }
}
