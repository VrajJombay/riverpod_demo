import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_demo/extensions/mappers.dart';
import 'package:riverpod_demo/screens/character_details/domain/character_details.dart';

import '../../../api/api_providers.dart';
import '../../../api/character/character_api_services.dart';

part 'character_details_repository.g.dart';

@riverpod
CharacterDetailsRepository characterRepository(Ref ref) {
  final characterApiServices = ref.read(characterApiServicesProvider);
  return CharacterDetailsRepositoryImpl(
      characterApiServices: characterApiServices);
}

abstract class CharacterDetailsRepository {
  Future<CharacterDetails> getCharactersDetails(int? id);
}

class CharacterDetailsRepositoryImpl extends CharacterDetailsRepository {
  final CharacterApiServices _characterApiServices;

  CharacterDetailsRepositoryImpl(
      {required CharacterApiServices characterApiServices})
      : _characterApiServices = characterApiServices;

  @override
  Future<CharacterDetails> getCharactersDetails(int? id) async {
    final characterDetails =
        await _characterApiServices.getCharacterDetails(id);
    return characterDetails.mapToCharacter;
  }
}
