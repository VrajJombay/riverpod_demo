import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_demo/extensions/mappers.dart';
import 'package:riverpod_demo/realm/model/character_entity.dart';
import 'package:riverpod_demo/realm/realm_provider.dart';

import '../../../realm/dao/character_dao.dart';
import '../domain/favorite_character.dart';

part 'favorite_notifier.g.dart';

@riverpod
class FavoriteNotifier extends _$FavoriteNotifier {
  late final CharacterDao _characterDao;

  @override
  Future<AsyncValue<List<FavoriteResult>?>> build() async {
    _characterDao = ref.read(characterDaoProvider);
    List<CharacterEntity>? favoriteCharacterList =
        await _characterDao.getCharacter();

    return AsyncData(
        favoriteCharacterList?.map((e) => e.mapToFavoriteResult).toList());
  }

  Future<void> deleteFavorite(int? id) async {
    print('init called -->${state.value?.value.runtimeType}');
    print('delete called');
    await _characterDao.deleteCharacter(id ?? 0);
    state.value?.value?.removeWhere((e) => e.id == id);
    state = AsyncData(state.value!);
  }
}
