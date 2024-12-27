// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoriteResultImpl _$$FavoriteResultImplFromJson(Map<String, dynamic> json) =>
    _$FavoriteResultImpl(
      name: json['name'] as String?,
      img: json['img'] as String?,
      id: (json['id'] as num?)?.toInt(),
      status: json['status'] as String?,
      species: json['species'] as String?,
      locationName: json['locationName'] as String?,
      originName: json['originName'] as String?,
    );

Map<String, dynamic> _$$FavoriteResultImplToJson(
        _$FavoriteResultImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'img': instance.img,
      'id': instance.id,
      'status': instance.status,
      'species': instance.species,
      'locationName': instance.locationName,
      'originName': instance.originName,
    };
