// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CharacterDetailsDto _$CharacterDetailsDtoFromJson(Map<String, dynamic> json) {
  return _CharacterDetailsDto.fromJson(json);
}

/// @nodoc
mixin _$CharacterDetailsDto {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;

  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;

  @JsonKey(name: 'species')
  String? get species => throw _privateConstructorUsedError;

  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;

  @JsonKey(name: 'gender')
  String? get gender => throw _privateConstructorUsedError;

  @JsonKey(name: 'origin')
  Origin? get origin => throw _privateConstructorUsedError;

  @JsonKey(name: 'location')
  Location? get location => throw _privateConstructorUsedError;

  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;

  @JsonKey(name: 'episode')
  List<String>? get episode => throw _privateConstructorUsedError;

  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;

  @JsonKey(name: 'created')
  String? get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterDetailsDtoCopyWith<CharacterDetailsDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterDetailsDtoCopyWith<$Res> {
  factory $CharacterDetailsDtoCopyWith(CharacterDetailsDto value, $Res Function(CharacterDetailsDto) then) =
      _$CharacterDetailsDtoCopyWithImpl<$Res, CharacterDetailsDto>;

  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'species') String? species,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'origin') Origin? origin,
      @JsonKey(name: 'location') Location? location,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'episode') List<String>? episode,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'created') String? created});

  $OriginCopyWith<$Res>? get origin;

  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$CharacterDetailsDtoCopyWithImpl<$Res, $Val extends CharacterDetailsDto> implements $CharacterDetailsDtoCopyWith<$Res> {
  _$CharacterDetailsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? type = freezed,
    Object? gender = freezed,
    Object? origin = freezed,
    Object? location = freezed,
    Object? image = freezed,
    Object? episode = freezed,
    Object? url = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Origin?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: freezed == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OriginCopyWith<$Res>? get origin {
    if (_value.origin == null) {
      return null;
    }

    return $OriginCopyWith<$Res>(_value.origin!, (value) {
      return _then(_value.copyWith(origin: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharacterDetailsDtoImplCopyWith<$Res> implements $CharacterDetailsDtoCopyWith<$Res> {
  factory _$$CharacterDetailsDtoImplCopyWith(_$CharacterDetailsDtoImpl value, $Res Function(_$CharacterDetailsDtoImpl) then) =
      __$$CharacterDetailsDtoImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'species') String? species,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'origin') Origin? origin,
      @JsonKey(name: 'location') Location? location,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'episode') List<String>? episode,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'created') String? created});

  @override
  $OriginCopyWith<$Res>? get origin;

  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$CharacterDetailsDtoImplCopyWithImpl<$Res> extends _$CharacterDetailsDtoCopyWithImpl<$Res, _$CharacterDetailsDtoImpl>
    implements _$$CharacterDetailsDtoImplCopyWith<$Res> {
  __$$CharacterDetailsDtoImplCopyWithImpl(_$CharacterDetailsDtoImpl _value, $Res Function(_$CharacterDetailsDtoImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? type = freezed,
    Object? gender = freezed,
    Object? origin = freezed,
    Object? location = freezed,
    Object? image = freezed,
    Object? episode = freezed,
    Object? url = freezed,
    Object? created = freezed,
  }) {
    return _then(_$CharacterDetailsDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Origin?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: freezed == episode
          ? _value._episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterDetailsDtoImpl implements _CharacterDetailsDto {
  const _$CharacterDetailsDtoImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'species') this.species,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'gender') this.gender,
      @JsonKey(name: 'origin') this.origin,
      @JsonKey(name: 'location') this.location,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'episode') final List<String>? episode,
      @JsonKey(name: 'url') this.url,
      @JsonKey(name: 'created') this.created})
      : _episode = episode;

  factory _$CharacterDetailsDtoImpl.fromJson(Map<String, dynamic> json) => _$$CharacterDetailsDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'species')
  final String? species;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'gender')
  final String? gender;
  @override
  @JsonKey(name: 'origin')
  final Origin? origin;
  @override
  @JsonKey(name: 'location')
  final Location? location;
  @override
  @JsonKey(name: 'image')
  final String? image;
  final List<String>? _episode;

  @override
  @JsonKey(name: 'episode')
  List<String>? get episode {
    final value = _episode;
    if (value == null) return null;
    if (_episode is EqualUnmodifiableListView) return _episode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'created')
  final String? created;

  @override
  String toString() {
    return 'CharacterDetailsDto(id: $id, name: $name, status: $status, species: $species, type: $type, gender: $gender, origin: $origin, location: $location, image: $image, episode: $episode, url: $url, created: $created)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterDetailsDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.location, location) || other.location == location) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._episode, _episode) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, status, species, type, gender, origin, location, image, const DeepCollectionEquality().hash(_episode), url, created);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterDetailsDtoImplCopyWith<_$CharacterDetailsDtoImpl> get copyWith =>
      __$$CharacterDetailsDtoImplCopyWithImpl<_$CharacterDetailsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterDetailsDtoImplToJson(
      this,
    );
  }
}

abstract class _CharacterDetailsDto implements CharacterDetailsDto {
  const factory _CharacterDetailsDto(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'species') final String? species,
      @JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'gender') final String? gender,
      @JsonKey(name: 'origin') final Origin? origin,
      @JsonKey(name: 'location') final Location? location,
      @JsonKey(name: 'image') final String? image,
      @JsonKey(name: 'episode') final List<String>? episode,
      @JsonKey(name: 'url') final String? url,
      @JsonKey(name: 'created') final String? created}) = _$CharacterDetailsDtoImpl;

  factory _CharacterDetailsDto.fromJson(Map<String, dynamic> json) = _$CharacterDetailsDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;

  @override
  @JsonKey(name: 'name')
  String? get name;

  @override
  @JsonKey(name: 'status')
  String? get status;

  @override
  @JsonKey(name: 'species')
  String? get species;

  @override
  @JsonKey(name: 'type')
  String? get type;

  @override
  @JsonKey(name: 'gender')
  String? get gender;

  @override
  @JsonKey(name: 'origin')
  Origin? get origin;

  @override
  @JsonKey(name: 'location')
  Location? get location;

  @override
  @JsonKey(name: 'image')
  String? get image;

  @override
  @JsonKey(name: 'episode')
  List<String>? get episode;

  @override
  @JsonKey(name: 'url')
  String? get url;

  @override
  @JsonKey(name: 'created')
  String? get created;

  @override
  @JsonKey(ignore: true)
  _$$CharacterDetailsDtoImplCopyWith<_$CharacterDetailsDtoImpl> get copyWith => throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) = _$LocationCopyWithImpl<$Res, Location>;

  @useResult
  $Res call({@JsonKey(name: 'name') String? name, @JsonKey(name: 'url') String? url});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location> implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(_$LocationImpl value, $Res Function(_$LocationImpl) then) = __$$LocationImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({@JsonKey(name: 'name') String? name, @JsonKey(name: 'url') String? url});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res> extends _$LocationCopyWithImpl<$Res, _$LocationImpl> implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(_$LocationImpl _value, $Res Function(_$LocationImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$LocationImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl({@JsonKey(name: 'name') this.name, @JsonKey(name: 'url') this.url});

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) => _$$LocationImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'url')
  final String? url;

  @override
  String toString() {
    return 'Location(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith => __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location({@JsonKey(name: 'name') final String? name, @JsonKey(name: 'url') final String? url}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) = _$LocationImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;

  @override
  @JsonKey(name: 'url')
  String? get url;

  @override
  @JsonKey(ignore: true)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith => throw _privateConstructorUsedError;
}

Origin _$OriginFromJson(Map<String, dynamic> json) {
  return _Origin.fromJson(json);
}

/// @nodoc
mixin _$Origin {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OriginCopyWith<Origin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OriginCopyWith<$Res> {
  factory $OriginCopyWith(Origin value, $Res Function(Origin) then) = _$OriginCopyWithImpl<$Res, Origin>;

  @useResult
  $Res call({@JsonKey(name: 'name') String? name, @JsonKey(name: 'url') String? url});
}

/// @nodoc
class _$OriginCopyWithImpl<$Res, $Val extends Origin> implements $OriginCopyWith<$Res> {
  _$OriginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OriginImplCopyWith<$Res> implements $OriginCopyWith<$Res> {
  factory _$$OriginImplCopyWith(_$OriginImpl value, $Res Function(_$OriginImpl) then) = __$$OriginImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({@JsonKey(name: 'name') String? name, @JsonKey(name: 'url') String? url});
}

/// @nodoc
class __$$OriginImplCopyWithImpl<$Res> extends _$OriginCopyWithImpl<$Res, _$OriginImpl> implements _$$OriginImplCopyWith<$Res> {
  __$$OriginImplCopyWithImpl(_$OriginImpl _value, $Res Function(_$OriginImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$OriginImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OriginImpl implements _Origin {
  const _$OriginImpl({@JsonKey(name: 'name') this.name, @JsonKey(name: 'url') this.url});

  factory _$OriginImpl.fromJson(Map<String, dynamic> json) => _$$OriginImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'url')
  final String? url;

  @override
  String toString() {
    return 'Origin(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OriginImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OriginImplCopyWith<_$OriginImpl> get copyWith => __$$OriginImplCopyWithImpl<_$OriginImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OriginImplToJson(
      this,
    );
  }
}

abstract class _Origin implements Origin {
  const factory _Origin({@JsonKey(name: 'name') final String? name, @JsonKey(name: 'url') final String? url}) = _$OriginImpl;

  factory _Origin.fromJson(Map<String, dynamic> json) = _$OriginImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;

  @override
  @JsonKey(name: 'url')
  String? get url;

  @override
  @JsonKey(ignore: true)
  _$$OriginImplCopyWith<_$OriginImpl> get copyWith => throw _privateConstructorUsedError;
}
