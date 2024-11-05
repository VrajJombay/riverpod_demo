// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Character {
  List<Result>? get results => throw _privateConstructorUsedError;

  int? get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterCopyWith<Character> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterCopyWith<$Res> {
  factory $CharacterCopyWith(Character value, $Res Function(Character) then) = _$CharacterCopyWithImpl<$Res, Character>;

  @useResult
  $Res call({List<Result>? results, int? page});
}

/// @nodoc
class _$CharacterCopyWithImpl<$Res, $Val extends Character> implements $CharacterCopyWith<$Res> {
  _$CharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterImplCopyWith<$Res> implements $CharacterCopyWith<$Res> {
  factory _$$CharacterImplCopyWith(_$CharacterImpl value, $Res Function(_$CharacterImpl) then) = __$$CharacterImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({List<Result>? results, int? page});
}

/// @nodoc
class __$$CharacterImplCopyWithImpl<$Res> extends _$CharacterCopyWithImpl<$Res, _$CharacterImpl> implements _$$CharacterImplCopyWith<$Res> {
  __$$CharacterImplCopyWithImpl(_$CharacterImpl _value, $Res Function(_$CharacterImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
    Object? page = freezed,
  }) {
    return _then(_$CharacterImpl(
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$CharacterImpl implements _Character {
  _$CharacterImpl({final List<Result>? results, this.page}) : _results = results;

  final List<Result>? _results;

  @override
  List<Result>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? page;

  @override
  String toString() {
    return 'Character(results: $results, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterImpl &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_results), page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterImplCopyWith<_$CharacterImpl> get copyWith => __$$CharacterImplCopyWithImpl<_$CharacterImpl>(this, _$identity);
}

abstract class _Character implements Character {
  factory _Character({final List<Result>? results, final int? page}) = _$CharacterImpl;

  @override
  List<Result>? get results;

  @override
  int? get page;

  @override
  @JsonKey(ignore: true)
  _$$CharacterImplCopyWith<_$CharacterImpl> get copyWith => throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  String? get name => throw _privateConstructorUsedError;

  String? get img => throw _privateConstructorUsedError;

  int? get id => throw _privateConstructorUsedError;

  String? get status => throw _privateConstructorUsedError;

  String? get species => throw _privateConstructorUsedError;

  String? get locationName => throw _privateConstructorUsedError;

  String? get originName => throw _privateConstructorUsedError;

  bool? get isFavorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) = _$ResultCopyWithImpl<$Res, Result>;

  @useResult
  $Res call({String? name, String? img, int? id, String? status, String? species, String? locationName, String? originName, bool? isFavorite});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result> implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? img = freezed,
    Object? id = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? locationName = freezed,
    Object? originName = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      originName: freezed == originName
          ? _value.originName
          : originName // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(_$ResultImpl value, $Res Function(_$ResultImpl) then) = __$$ResultImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({String? name, String? img, int? id, String? status, String? species, String? locationName, String? originName, bool? isFavorite});
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res> extends _$ResultCopyWithImpl<$Res, _$ResultImpl> implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(_$ResultImpl _value, $Res Function(_$ResultImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? img = freezed,
    Object? id = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? locationName = freezed,
    Object? originName = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_$ResultImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      originName: freezed == originName
          ? _value.originName
          : originName // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  _$ResultImpl({this.name, this.img, this.id, this.status, this.species, this.locationName, this.originName, this.isFavorite});

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) => _$$ResultImplFromJson(json);

  @override
  final String? name;
  @override
  final String? img;
  @override
  final int? id;
  @override
  final String? status;
  @override
  final String? species;
  @override
  final String? locationName;
  @override
  final String? originName;
  @override
  final bool? isFavorite;

  @override
  String toString() {
    return 'Result(name: $name, img: $img, id: $id, status: $status, species: $species, locationName: $locationName, originName: $originName, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.locationName, locationName) || other.locationName == locationName) &&
            (identical(other.originName, originName) || other.originName == originName) &&
            (identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, img, id, status, species, locationName, originName, isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith => __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  factory _Result(
      {final String? name,
      final String? img,
      final int? id,
      final String? status,
      final String? species,
      final String? locationName,
      final String? originName,
      final bool? isFavorite}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  String? get name;

  @override
  String? get img;

  @override
  int? get id;

  @override
  String? get status;

  @override
  String? get species;

  @override
  String? get locationName;

  @override
  String? get originName;

  @override
  bool? get isFavorite;

  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith => throw _privateConstructorUsedError;
}
