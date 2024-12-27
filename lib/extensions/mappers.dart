import 'package:riverpod_demo/api/character/models/character/character_dto.dart';
import 'package:riverpod_demo/api/character/models/character_details/character_details_dto.dart';
import 'package:riverpod_demo/realm/model/character_entity.dart';
import 'package:riverpod_demo/screens/character/domain/character.dart';

import '../screens/character_details/domain/character_details.dart';
import '../screens/favorite/domain/favorite_character.dart';

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
                createdAt: e.created,
              ))
          .toList(),
      page: info?.pages,
    );
  }
}

extension CharacterEntityExtension on Results {
  CharacterEntity get mapToCharacterEntity {
    return CharacterEntity(
      id,
      name: name,
      species: status ?? '',
      status: species ?? '',
      originName: origin?.name ?? '',
      locationName: location?.name ?? '',
      createdAt: created,
      image: image,
    );
  }
}

extension ResultExtension on CharacterEntity {
  Result get mapToResult {
    return Result(
      id: id,
      name: name,
      species: status ?? '',
      status: species ?? '',
      locationName: locationName,
      originName: originName,
      createdAt: createdAt,
      img: image,
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

extension FavoriteResultExtension on CharacterEntity {
  FavoriteResult get mapToFavoriteResult {
    return FavoriteResult(
      locationName: locationName,
      originName: originName,
      name: name,
      id: id,
      img: image,
      species: species,
      status: status,
    );
  }
}
