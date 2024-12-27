import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_demo/extensions/mappers.dart';
import 'package:riverpod_demo/realm/model/character_entity.dart';
import 'package:riverpod_demo/realm/realm_provider.dart';
import 'package:riverpod_demo/screens/character/data/character_repository.dart';

import '../../../realm/dao/character_dao.dart';
import '../domain/character.dart';
import 'character_state.dart';

part 'character_notifier.g.dart';

@riverpod
class CharacterNotifier extends _$CharacterNotifier {
  late final CharacterRepository _characterRepository;
  late final CharacterDao _characterDao;

  @override
  CharacterState build() {
    _characterRepository = ref.read(characterRepositoryProvider);
    _characterDao = ref.read(characterDaoProvider);
    return CharacterState();
  }

  void getCharacter() async {
    try {
      final Character? characters;
      if (state.currentPage == 1) {
        state = state.copyWith(getCharacterData: AsyncLoading());
        characters = await _characterRepository.getCharacters(1);
      } else {
        state = state.copyWith(loadingData: AsyncLoading());
        characters =
            await _characterRepository.getCharacters(state.currentPage);
      }
      List<CharacterEntity>? favoriteCharacterList =
          await _characterDao.getCharacter();
      if (favoriteCharacterList != null && favoriteCharacterList.isNotEmpty) {
        List<Result>? updatedCharacters1;
        List<Result>? updatedCharacters2;
        updatedCharacters1 = state.getCharacterData.value?.map((e) {
          if (favoriteCharacterList.any((ele) => ele.id == e.id)) {
            return e.copyWith(isFavorite: true);
          } else {
            return e.copyWith(isFavorite: false);
          }
        }).toList();
        updatedCharacters2 = characters?.results?.map((e) {
          if (favoriteCharacterList.any((ele) => ele.id == e.id)) {
            return e.copyWith(isFavorite: true);
          } else {
            return e.copyWith(isFavorite: false);
          }
        }).toList();
        state = state.copyWith(
            getCharacterData: AsyncData(
                [...(updatedCharacters1 ?? []), ...updatedCharacters2 ?? []]),
            getCharacterDataForSearch: AsyncData(
                [...(updatedCharacters1 ?? []), ...updatedCharacters2 ?? []]),
            totalPage: characters?.page ?? 0,
            loadingData: AsyncData(null),
            currentPage: state.currentPage + 1);
      } else {
        state = state.copyWith(
            getCharacterData: AsyncData([
              ...(state.getCharacterData.value ?? []),
              ...characters?.results ?? []
            ]),
            getCharacterDataForSearch: AsyncData([
              ...(state.getCharacterData.value ?? []),
              ...characters?.results ?? []
            ]),
            totalPage: characters?.page ?? 0,
            loadingData: AsyncData(null),
            currentPage: state.currentPage + 1);
      }
    } catch (e) {
      if (state.currentPage != 1) {
        state = state.copyWith(
            currentPage: state.currentPage - 1,
            loadingData: AsyncError(e, StackTrace.current));
      } else {
        state =
            state.copyWith(getCharacterData: AsyncError(e, StackTrace.current));
      }
    }
  }

  void updateFavoriteDataOnDataLoad() {
    state.getCharacterData.whenData((character) async {
      if (character == null) return;
      List<Result>? favoriteList = await _characterDao
          .getCharacter()
          ?.map((e) => e.mapToResult)
          .toList();
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
      final result = state.getCharacterData.value
          ?.where((e) =>
              (e.name?.toLowerCase().contains(name.trim().toLowerCase()) ??
                  false))
          .toList();
      state = state.copyWith(getCharacterData: AsyncData(result));
    }
  }

  void onChangeView(bool isListView) {
    state = state.copyWith(isListView: !isListView);
  }

  void addCharacterToFavorite(int id, int index) {
    state.getCharacterData.whenData((characters) async {
      if (characters == null) return;
      for (var e in characters) {
        if (e.id == id) {
          await _characterDao.addCharacter(
            CharacterEntity(
              id,
              image: e.img,
              createdAt: e.createdAt,
              locationName: e.locationName,
              originName: e.originName,
              name: e.name,
              species: e.species,
              status: e.status,
            ),
          );
        }
      }
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
    });
  }
}
