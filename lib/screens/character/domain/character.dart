import 'package:freezed_annotation/freezed_annotation.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
  factory Character({
    List<Result>? results,
    int? page,
  }) = _Character;
}

@freezed
class Result with _$Result {
  factory Result({
    String? name,
    String? img,
    int? id,
    String? status,
    String? species,
    String? locationName,
    String? originName,
    bool? isFavorite,
    String? createdAt,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
