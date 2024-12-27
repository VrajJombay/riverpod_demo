import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_demo/realm/dao/character_dao.dart';
import 'package:riverpod_demo/realm/realm_service.dart';

part 'realm_provider.g.dart';

@riverpod
RealmService realmService(RealmServiceRef ref) {
  return RealmService();
}

@riverpod
CharacterDao characterDao(Ref ref) {
  return CharacterDao(realm: ref.watch(realmServiceProvider).realm);
}
