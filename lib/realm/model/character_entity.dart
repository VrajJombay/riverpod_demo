import 'package:realm/realm.dart';

part 'character_entity.realm.dart';

@RealmModel()
class _CharacterEntity {
  @PrimaryKey()
  late int? id;
  late String? name;
  late String? status;
  late String? species;
  late String? image;
  late String? originName;
  late String? locationName;
  late String? createdAt;
}
