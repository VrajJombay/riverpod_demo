import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../preferences/preferences_key.dart';
import '../../../preferences/preferences_provider.dart';
import '../../../preferences/preferences_service.dart';
import '../../character/domain/character.dart';

part 'favorite_notifier.g.dart';

@riverpod
class FavoriteNotifier extends _$FavoriteNotifier {
  late final PreferencesService _preferencesService;

  @override
  Future<AsyncValue<List<Result>?>> build() async {
    _preferencesService = ref.read(preferencesProvider);
    List<dynamic>? favoriteListFromStore = json.decode(await _preferencesService.getString(key: PreferencesKey.characterList) ?? '');
    List<Result>? favoriteList = favoriteListFromStore?.map((e) => Result.fromJson(e)).toList();

    return AsyncData(favoriteList);
  }
}
