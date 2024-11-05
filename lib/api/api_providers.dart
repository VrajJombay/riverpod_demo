import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_demo/api/api_client.dart';
import 'package:riverpod_demo/api/api_constants.dart';
import 'package:riverpod_demo/api/character/character_api_services.dart';

part 'api_providers.g.dart';

@riverpod
CharacterApiServices characterApiServices(Ref ref) {
  return CharacterApiServices(
    ApiClient(
      ApiConstants.baseURL,
    ),
  );
}
