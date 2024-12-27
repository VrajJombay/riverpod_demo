import 'package:realm/realm.dart';
import 'package:riverpod_demo/realm/model/character_entity.dart';

class RealmService {
  late Realm _realm;

  Realm get realm => _realm;

  RealmService() {
    init();
  }

  init() {
    final config = Configuration.local(
      [
        CharacterEntity.schema,
      ],
    );
    _realm = Realm(config);
  }
}
