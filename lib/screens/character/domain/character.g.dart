// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      name: json['name'] as String?,
      img: json['img'] as String?,
      id: (json['id'] as num?)?.toInt(),
      status: json['status'] as String?,
      species: json['species'] as String?,
      locationName: json['locationName'] as String?,
      originName: json['originName'] as String?,
      isFavorite: json['isFavorite'] as bool?,
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) => <String, dynamic>{
      'name': instance.name,
      'img': instance.img,
      'id': instance.id,
      'status': instance.status,
      'species': instance.species,
      'locationName': instance.locationName,
      'originName': instance.originName,
      'isFavorite': instance.isFavorite,
    };
