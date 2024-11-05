import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_details.freezed.dart';

@freezed
class CharacterDetails with _$CharacterDetails {
  factory CharacterDetails({
    int? id,
    String? name,
    String? status,
    String? species,
    List<String>? episode,
    String? img,
  }) = _CharacterDetails;
}
