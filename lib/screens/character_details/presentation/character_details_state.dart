import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/character_details.dart';

part 'character_details_state.freezed.dart';

@freezed
class CharacterDetailsState with _$CharacterDetailsState {
  factory CharacterDetailsState({
    @Default(AsyncData(null)) AsyncValue<CharacterDetails?> characterDetails,
  }) = _CharacterDetailsState;
}
