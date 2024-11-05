import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_demo/api/api_providers.dart';
import 'package:riverpod_demo/extensions/mappers.dart';

import '../../../api/character/character_api_services.dart';
import '../domain/character.dart';

part 'character_repository.g.dart';

@riverpod
CharacterRepository characterRepository(Ref ref) {
  final characterApiServices = ref.read(characterApiServicesProvider);
  return CharacterRepositoryImpl(characterApiServices: characterApiServices);
}

abstract class CharacterRepository {
  Future<Character?> getCharacters(int page);
}

class CharacterRepositoryImpl extends CharacterRepository {
  final CharacterApiServices _characterApiServices;

  CharacterRepositoryImpl({required CharacterApiServices characterApiServices}) : _characterApiServices = characterApiServices;

  @override
  Future<Character?> getCharacters(int page) async {
    final characters = await _characterApiServices.getCharacter(page);
    return characters.mapToCharacter;
  }
}
