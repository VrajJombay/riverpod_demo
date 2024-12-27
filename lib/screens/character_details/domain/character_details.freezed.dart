// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CharacterDetails {
  int? get id => throw _privateConstructorUsedError;

  String? get name => throw _privateConstructorUsedError;

  String? get status => throw _privateConstructorUsedError;

  String? get species => throw _privateConstructorUsedError;

  List<String>? get episode => throw _privateConstructorUsedError;

  String? get img => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterDetailsCopyWith<CharacterDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterDetailsCopyWith<$Res> {
  factory $CharacterDetailsCopyWith(
          CharacterDetails value, $Res Function(CharacterDetails) then) =
      _$CharacterDetailsCopyWithImpl<$Res, CharacterDetails>;

  @useResult
  $Res call(
      {int? id,
      String? name,
      String? status,
      String? species,
      List<String>? episode,
      String? img});
}

/// @nodoc
class _$CharacterDetailsCopyWithImpl<$Res, $Val extends CharacterDetails>
    implements $CharacterDetailsCopyWith<$Res> {
  _$CharacterDetailsCopyWithImpl(this._value, this._then);

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
    Object? episode = freezed,
    Object? img = freezed,
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
      episode: freezed == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterDetailsImplCopyWith<$Res>
    implements $CharacterDetailsCopyWith<$Res> {
  factory _$$CharacterDetailsImplCopyWith(_$CharacterDetailsImpl value,
          $Res Function(_$CharacterDetailsImpl) then) =
      __$$CharacterDetailsImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? status,
      String? species,
      List<String>? episode,
      String? img});
}

/// @nodoc
class __$$CharacterDetailsImplCopyWithImpl<$Res>
    extends _$CharacterDetailsCopyWithImpl<$Res, _$CharacterDetailsImpl>
    implements _$$CharacterDetailsImplCopyWith<$Res> {
  __$$CharacterDetailsImplCopyWithImpl(_$CharacterDetailsImpl _value,
      $Res Function(_$CharacterDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? episode = freezed,
    Object? img = freezed,
  }) {
    return _then(_$CharacterDetailsImpl(
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
      episode: freezed == episode
          ? _value._episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CharacterDetailsImpl implements _CharacterDetails {
  _$CharacterDetailsImpl(
      {this.id,
      this.name,
      this.status,
      this.species,
      final List<String>? episode,
      this.img})
      : _episode = episode;

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? status;
  @override
  final String? species;
  final List<String>? _episode;

  @override
  List<String>? get episode {
    final value = _episode;
    if (value == null) return null;
    if (_episode is EqualUnmodifiableListView) return _episode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? img;

  @override
  String toString() {
    return 'CharacterDetails(id: $id, name: $name, status: $status, species: $species, episode: $episode, img: $img)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.species, species) || other.species == species) &&
            const DeepCollectionEquality().equals(other._episode, _episode) &&
            (identical(other.img, img) || other.img == img));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, status, species,
      const DeepCollectionEquality().hash(_episode), img);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterDetailsImplCopyWith<_$CharacterDetailsImpl> get copyWith =>
      __$$CharacterDetailsImplCopyWithImpl<_$CharacterDetailsImpl>(
          this, _$identity);
}

abstract class _CharacterDetails implements CharacterDetails {
  factory _CharacterDetails(
      {final int? id,
      final String? name,
      final String? status,
      final String? species,
      final List<String>? episode,
      final String? img}) = _$CharacterDetailsImpl;

  @override
  int? get id;

  @override
  String? get name;

  @override
  String? get status;

  @override
  String? get species;

  @override
  List<String>? get episode;

  @override
  String? get img;

  @override
  @JsonKey(ignore: true)
  _$$CharacterDetailsImplCopyWith<_$CharacterDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
