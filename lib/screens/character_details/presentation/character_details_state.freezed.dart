// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CharacterDetailsState {
  AsyncValue<CharacterDetails?> get characterDetails =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterDetailsStateCopyWith<CharacterDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterDetailsStateCopyWith<$Res> {
  factory $CharacterDetailsStateCopyWith(CharacterDetailsState value,
          $Res Function(CharacterDetailsState) then) =
      _$CharacterDetailsStateCopyWithImpl<$Res, CharacterDetailsState>;

  @useResult
  $Res call({AsyncValue<CharacterDetails?> characterDetails});
}

/// @nodoc
class _$CharacterDetailsStateCopyWithImpl<$Res,
        $Val extends CharacterDetailsState>
    implements $CharacterDetailsStateCopyWith<$Res> {
  _$CharacterDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterDetails = null,
  }) {
    return _then(_value.copyWith(
      characterDetails: null == characterDetails
          ? _value.characterDetails
          : characterDetails // ignore: cast_nullable_to_non_nullable
              as AsyncValue<CharacterDetails?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterDetailsStateImplCopyWith<$Res>
    implements $CharacterDetailsStateCopyWith<$Res> {
  factory _$$CharacterDetailsStateImplCopyWith(
          _$CharacterDetailsStateImpl value,
          $Res Function(_$CharacterDetailsStateImpl) then) =
      __$$CharacterDetailsStateImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({AsyncValue<CharacterDetails?> characterDetails});
}

/// @nodoc
class __$$CharacterDetailsStateImplCopyWithImpl<$Res>
    extends _$CharacterDetailsStateCopyWithImpl<$Res,
        _$CharacterDetailsStateImpl>
    implements _$$CharacterDetailsStateImplCopyWith<$Res> {
  __$$CharacterDetailsStateImplCopyWithImpl(_$CharacterDetailsStateImpl _value,
      $Res Function(_$CharacterDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterDetails = null,
  }) {
    return _then(_$CharacterDetailsStateImpl(
      characterDetails: null == characterDetails
          ? _value.characterDetails
          : characterDetails // ignore: cast_nullable_to_non_nullable
              as AsyncValue<CharacterDetails?>,
    ));
  }
}

/// @nodoc

class _$CharacterDetailsStateImpl implements _CharacterDetailsState {
  _$CharacterDetailsStateImpl({this.characterDetails = const AsyncData(null)});

  @override
  @JsonKey()
  final AsyncValue<CharacterDetails?> characterDetails;

  @override
  String toString() {
    return 'CharacterDetailsState(characterDetails: $characterDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterDetailsStateImpl &&
            (identical(other.characterDetails, characterDetails) ||
                other.characterDetails == characterDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, characterDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterDetailsStateImplCopyWith<_$CharacterDetailsStateImpl>
      get copyWith => __$$CharacterDetailsStateImplCopyWithImpl<
          _$CharacterDetailsStateImpl>(this, _$identity);
}

abstract class _CharacterDetailsState implements CharacterDetailsState {
  factory _CharacterDetailsState(
          {final AsyncValue<CharacterDetails?> characterDetails}) =
      _$CharacterDetailsStateImpl;

  @override
  AsyncValue<CharacterDetails?> get characterDetails;

  @override
  @JsonKey(ignore: true)
  _$$CharacterDetailsStateImplCopyWith<_$CharacterDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
