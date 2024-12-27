// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavoriteResult _$FavoriteResultFromJson(Map<String, dynamic> json) {
  return _FavoriteResult.fromJson(json);
}

/// @nodoc
mixin _$FavoriteResult {
  String? get name => throw _privateConstructorUsedError;

  String? get img => throw _privateConstructorUsedError;

  int? get id => throw _privateConstructorUsedError;

  String? get status => throw _privateConstructorUsedError;

  String? get species => throw _privateConstructorUsedError;

  String? get locationName => throw _privateConstructorUsedError;

  String? get originName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteResultCopyWith<FavoriteResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteResultCopyWith<$Res> {
  factory $FavoriteResultCopyWith(
          FavoriteResult value, $Res Function(FavoriteResult) then) =
      _$FavoriteResultCopyWithImpl<$Res, FavoriteResult>;

  @useResult
  $Res call(
      {String? name,
      String? img,
      int? id,
      String? status,
      String? species,
      String? locationName,
      String? originName});
}

/// @nodoc
class _$FavoriteResultCopyWithImpl<$Res, $Val extends FavoriteResult>
    implements $FavoriteResultCopyWith<$Res> {
  _$FavoriteResultCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteResultImplCopyWith<$Res>
    implements $FavoriteResultCopyWith<$Res> {
  factory _$$FavoriteResultImplCopyWith(_$FavoriteResultImpl value,
          $Res Function(_$FavoriteResultImpl) then) =
      __$$FavoriteResultImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {String? name,
      String? img,
      int? id,
      String? status,
      String? species,
      String? locationName,
      String? originName});
}

/// @nodoc
class __$$FavoriteResultImplCopyWithImpl<$Res>
    extends _$FavoriteResultCopyWithImpl<$Res, _$FavoriteResultImpl>
    implements _$$FavoriteResultImplCopyWith<$Res> {
  __$$FavoriteResultImplCopyWithImpl(
      _$FavoriteResultImpl _value, $Res Function(_$FavoriteResultImpl) _then)
      : super(_value, _then);

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
  }) {
    return _then(_$FavoriteResultImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoriteResultImpl implements _FavoriteResult {
  _$FavoriteResultImpl(
      {this.name,
      this.img,
      this.id,
      this.status,
      this.species,
      this.locationName,
      this.originName});

  factory _$FavoriteResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteResultImplFromJson(json);

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
  String toString() {
    return 'FavoriteResult(name: $name, img: $img, id: $id, status: $status, species: $species, locationName: $locationName, originName: $originName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteResultImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.originName, originName) ||
                other.originName == originName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, img, id, status, species, locationName, originName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteResultImplCopyWith<_$FavoriteResultImpl> get copyWith =>
      __$$FavoriteResultImplCopyWithImpl<_$FavoriteResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteResultImplToJson(
      this,
    );
  }
}

abstract class _FavoriteResult implements FavoriteResult {
  factory _FavoriteResult(
      {final String? name,
      final String? img,
      final int? id,
      final String? status,
      final String? species,
      final String? locationName,
      final String? originName}) = _$FavoriteResultImpl;

  factory _FavoriteResult.fromJson(Map<String, dynamic> json) =
      _$FavoriteResultImpl.fromJson;

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
  @JsonKey(ignore: true)
  _$$FavoriteResultImplCopyWith<_$FavoriteResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
