import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  final SharedPreferencesAsync _preferences;

  PreferencesService(this._preferences);

  Future<void> saveString({required String key, required String value}) async {
    return await _preferences.setString(key, value);
  }

  Future<String?> getString({required String key}) async {
    return await _preferences.getString(key);
  }

  Future<void> clear() async {
    return await _preferences.clear();
  }

  Future<void> removeString({required String key}) async {
    return await _preferences.remove(key);
  }
}
