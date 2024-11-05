import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/character.dart';

part 'character_state.freezed.dart';

@freezed
class CharacterState with _$CharacterState {
  factory CharacterState({
    @Default(AsyncData(null)) AsyncValue<List<Result>?> getCharacterData,
    @Default(AsyncData(null)) AsyncValue<List<Result>?> getCharacterDataForSearch,
    @Default(true) bool isListView,
    @Default(1) int currentPage,
    @Default(0) int totalPage,
    @Default(AsyncData(null)) AsyncValue<void> loadingData,
  }) = _CharacterState;
}
