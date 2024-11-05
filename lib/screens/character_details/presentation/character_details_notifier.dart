import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_demo/screens/character_details/presentation/character_details_state.dart';

import '../data/character_details_repository.dart';

part 'character_details_notifier.g.dart';

@riverpod
class CharacterDetailsNotifier extends _$CharacterDetailsNotifier {
  late final CharacterDetailsRepository _characterDetailsRepository;

  @override
  CharacterDetailsState build() {
    _characterDetailsRepository = ref.read(characterRepositoryProvider);
    return CharacterDetailsState();
  }

  void getCharacterDetails(int? id) async {
    try {
      state = state.copyWith(characterDetails: AsyncLoading());
      final characterDetails = await _characterDetailsRepository.getCharactersDetails(id);
      state = state.copyWith(
        characterDetails: AsyncData(characterDetails),
      );
    } catch (e) {
      state = state.copyWith(characterDetails: AsyncError(e, StackTrace.current));
    }
  }
}
