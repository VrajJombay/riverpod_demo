import 'package:realm/realm.dart';

import '../model/character_entity.dart';

class CharacterDao {
  final Realm _realm;

  CharacterDao({required Realm realm}) : _realm = realm;

  Future<void> addCharacter(CharacterEntity characterEntity) async {
    try {
      await _realm.writeAsync(
        () {
          return _realm.add<CharacterEntity>(
            characterEntity,
            update: true,
          );
        },
      );
    } catch (e) {
      print(e);
    }
  }

  List<CharacterEntity>? getCharacter() {
    print('0000000000-->${_realm.all<CharacterEntity>()}');
    try {
      /*return _realm.query<CharacterEntity>('status IN \$0 SORT(createdAt ASC)', [
        ['Alive']
      ]).toList();*/

      // return _realm.query<CharacterEntity>('TRUEPREDICATE SORT(createdAt ASC)').toList();
      return _realm.all<CharacterEntity>().toList();
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<void> deleteCharacter(int id) async {
    try {
      final characterId =
          _realm.query<CharacterEntity>('id == $id').firstOrNull;
      if (characterId == null) {
        return;
      }
      await _realm.writeAsync(() {
        _realm.delete<CharacterEntity>(characterId);
      });
    } catch (e) {
      print('error==>${e}');
    }
  }
}
