import 'package:dio/dio.dart';
import 'package:riverpod_demo/api/api_client.dart';
import 'package:riverpod_demo/api/api_constants.dart';
import 'package:riverpod_demo/extensions/dio_exception_extension.dart';

import '../../utils/app_errors.dart';
import 'models/character/character_dto.dart';
import 'models/character_details/character_details_dto.dart';

class CharacterApiServices {
  final ApiClient _apiClient;

  CharacterApiServices(this._apiClient);

  Future<CharacterDto> getCharacter(int page) async {
    try {
      final response =
          await _apiClient.dio.get('${ApiConstants.characterURL}$page');
      return CharacterDto.fromJson(response.data);
    } on DioException catch (dioException) {
      throw dioException.appError;
    } catch (e) {
      throw UnknownError();
    }
  }

  Future<CharacterDetailsDto> getCharacterDetails(int? id) async {
    try {
      final response =
          await _apiClient.dio.get('${ApiConstants.characterDetailsURL}$id');
      return CharacterDetailsDto.fromJson(response.data);
    } on DioException catch (dioException) {
      throw dioException.appError;
    } catch (e) {
      throw UnknownError();
    }
  }
}
