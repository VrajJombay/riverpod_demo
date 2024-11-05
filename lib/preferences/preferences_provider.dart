import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_demo/preferences/preferences_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'preferences_provider.g.dart';

@riverpod
PreferencesService preferences(PreferencesRef ref) {
  return PreferencesService(SharedPreferencesAsync());
}
