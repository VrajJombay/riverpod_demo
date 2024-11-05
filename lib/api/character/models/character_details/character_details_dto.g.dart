// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterDetailsDtoImpl _$$CharacterDetailsDtoImplFromJson(Map<String, dynamic> json) => _$CharacterDetailsDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      status: json['status'] as String?,
      species: json['species'] as String?,
      type: json['type'] as String?,
      gender: json['gender'] as String?,
      origin: json['origin'] == null ? null : Origin.fromJson(json['origin'] as Map<String, dynamic>),
      location: json['location'] == null ? null : Location.fromJson(json['location'] as Map<String, dynamic>),
      image: json['image'] as String?,
      episode: (json['episode'] as List<dynamic>?)?.map((e) => e as String).toList(),
      url: json['url'] as String?,
      created: json['created'] as String?,
    );

Map<String, dynamic> _$$CharacterDetailsDtoImplToJson(_$CharacterDetailsDtoImpl instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'type': instance.type,
      'gender': instance.gender,
      'origin': instance.origin,
      'location': instance.location,
      'image': instance.image,
      'episode': instance.episode,
      'url': instance.url,
      'created': instance.created,
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) => _$LocationImpl(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$OriginImpl _$$OriginImplFromJson(Map<String, dynamic> json) => _$OriginImpl(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$OriginImplToJson(_$OriginImpl instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
