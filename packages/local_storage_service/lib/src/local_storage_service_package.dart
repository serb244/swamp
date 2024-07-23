import 'flutter_secure_storage_service.dart';
import 'shared_preferences_service.dart';

class LocalStorageServicePackage {
  final FlutterSecureStorageService flutterSecureStorageService = FlutterSecureStorageService();
  final SharedPreferencesService sharedPreferencesService = SharedPreferencesService();

  LocalStorageServicePackage();
}
