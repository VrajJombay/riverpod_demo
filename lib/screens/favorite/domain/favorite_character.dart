import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_character.freezed.dart';
part 'favorite_character.g.dart';

@freezed
class FavoriteResult with _$FavoriteResult {
  factory FavoriteResult({
    String? name,
    String? img,
    int? id,
    String? status,
    String? species,
    String? locationName,
    String? originName,
  }) = _FavoriteResult;

  factory FavoriteResult.fromJson(Map<String, dynamic> json) =>
      _$FavoriteResultFromJson(json);
}
