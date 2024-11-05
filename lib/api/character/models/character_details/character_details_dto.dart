import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_details_dto.freezed.dart';
part 'character_details_dto.g.dart';

@freezed
class CharacterDetailsDto with _$CharacterDetailsDto {
  const factory CharacterDetailsDto({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'species') String? species,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'origin') Origin? origin,
    @JsonKey(name: 'location') Location? location,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'episode') List<String>? episode,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'created') String? created,
  }) = _CharacterDetailsDto;

  factory CharacterDetailsDto.fromJson(Map<String, Object?> json) => _$CharacterDetailsDtoFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'url') String? url,
  }) = _Location;

  factory Location.fromJson(Map<String, Object?> json) => _$LocationFromJson(json);
}

@freezed
class Origin with _$Origin {
  const factory Origin({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'url') String? url,
  }) = _Origin;

  factory Origin.fromJson(Map<String, Object?> json) => _$OriginFromJson(json);
}
