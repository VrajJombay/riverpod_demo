import 'package:riverpod_demo/api/character/models/character/character_dto.dart';
import 'package:riverpod_demo/api/character/models/character_details/character_details_dto.dart';
import 'package:riverpod_demo/screens/character/domain/character.dart';

import '../screens/character_details/domain/character_details.dart';

extension CharacterExtension on CharacterDto {
  Character get mapToCharacter {
    return Character(
      results: results
          ?.map((e) => Result(
                status: e.status,
                name: e.name,
                species: e.species,
                locationName: e.location?.name,
                originName: e.origin?.name,
                img: e.image,
                id: e.id,
              ))
          .toList(),
      page: info?.pages,
    );
  }
}

extension CharacterDetailsExtension on CharacterDetailsDto {
  CharacterDetails get mapToCharacter {
    return CharacterDetails(
      status: status,
      name: name,
      episode: episode,
      id: id,
      species: species,
      img: image,
    );
  }
}
