import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_dto.freezed.dart';
part 'character_dto.g.dart';

@freezed
class CharacterDto with _$CharacterDto {
  const factory CharacterDto({
    @JsonKey(name: 'info') Info? info,
    @JsonKey(name: 'results') List<Results>? results,
  }) = _CharacterDto;

  factory CharacterDto.fromJson(Map<String, Object?> json) => _$CharacterDtoFromJson(json);
}

@freezed
class Results with _$Results {
  const factory Results({
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
  }) = _Results;

  factory Results.fromJson(Map<String, Object?> json) => _$ResultsFromJson(json);
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

@freezed
class Info with _$Info {
  const factory Info({
    @JsonKey(name: 'count') int? count,
    @JsonKey(name: 'pages') int? pages,
    @JsonKey(name: 'next') String? next,
    @JsonKey(name: 'prev') dynamic prev,
  }) = _Info;

  factory Info.fromJson(Map<String, Object?> json) => _$InfoFromJson(json);
}
