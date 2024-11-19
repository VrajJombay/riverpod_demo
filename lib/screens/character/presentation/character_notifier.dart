import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_demo/preferences/preferences_key.dart';
import 'package:riverpod_demo/preferences/preferences_provider.dart';
import 'package:riverpod_demo/preferences/preferences_service.dart';
import 'package:riverpod_demo/screens/character/data/character_repository.dart';

import '../domain/character.dart';
import 'character_state.dart';

part 'character_notifier.g.dart';

@riverpod
class CharacterNotifier extends _$CharacterNotifier {
  late final CharacterRepository _characterRepository;
  late final PreferencesService _preferencesService;

  @override
  CharacterState build() {
    _characterRepository = ref.read(characterRepositoryProvider);
    _preferencesService = ref.read(preferencesProvider);
    return CharacterState();
  }

  void getCharacter() async {
    print('get charactes data $state');
    try {
      final Character? characters;
      if (state.currentPage == 1) {
        print('if called');
        state = state.copyWith(getCharacterData: AsyncLoading());
        characters = await _characterRepository.getCharacters(1);
      } else {
        print('else called');
        state = state.copyWith(loadingData: AsyncLoading());
        characters = await _characterRepository.getCharacters(state.currentPage);
      }
      print('state change called');
      state = state.copyWith(
          getCharacterData: AsyncData([...(state.getCharacterData.value ?? []), ...characters?.results ?? []]),
          getCharacterDataForSearch: AsyncData([...(state.getCharacterData.value ?? []), ...characters?.results ?? []]),
          totalPage: characters?.page ?? 0,
          loadingData: AsyncData(null),
          currentPage: state.currentPage + 1);
    } catch (e) {
      print('error==>$e');
      if (state.currentPage != 1) {
        state = state.copyWith(currentPage: state.currentPage - 1, loadingData: AsyncError(e, StackTrace.current));
      } else {
        state = state.copyWith(getCharacterData: AsyncError(e, StackTrace.current));
      }
    }
  }

  void updateFavoriteDataOnDataLoad() {
    state.getCharacterData.whenData((character) async {
      if (character == null) return;
      List<dynamic>? favoriteListFromStore = json.decode(await _preferencesService.getString(key: PreferencesKey.characterList) ?? '');
      List<Result>? favoriteList = favoriteListFromStore?.map((e) => Result.fromJson(e)).toList();
      final updatedCharacters = character.map((e) {
        if (favoriteList?.isNotEmpty ?? false) {
          if (favoriteList?.any((e1) => e1.id == e.id) ?? false) {
            return e.copyWith(isFavorite: true);
          }
        }
        return e;
      }).toList();
      state = state.copyWith(
        getCharacterData: AsyncData(updatedCharacters),
        getCharacterDataForSearch: AsyncData(updatedCharacters),
      );
    });
  }

  void searchByName(String name) {
    state = state.copyWith(getCharacterData: state.getCharacterDataForSearch);
    if (name.trim().isNotEmpty) {
      final result = state.getCharacterData.value?.where((e) => (e.name?.toLowerCase().contains(name.trim().toLowerCase()) ?? false)).toList();
      state = state.copyWith(getCharacterData: AsyncData(result));
    }
  }

  void onChangeView(bool isListView) {
    state = state.copyWith(isListView: !isListView);
  }

  void addCharacterToFavorite(int id, int index) {
    state.getCharacterData.whenData((characters) async {
      if (characters == null) return;
      final updatedCharacters = characters.map((e) {
        if (e.id == id) {
          return e.copyWith(isFavorite: true);
        }
        return e;
      }).toList();

      state = state.copyWith(
        getCharacterData: AsyncData(updatedCharacters),
        getCharacterDataForSearch: AsyncData(updatedCharacters),
      );
      await _preferencesService.saveString(
          key: PreferencesKey.characterList, value: json.encode(state.getCharacterData.value?.where((e) => e.isFavorite == true).toList()));
      // _preferencesService.saveString(key: PreferencesKey.characterList, value: json.encode(state.getCharacterData.value));
    });
  }
}
