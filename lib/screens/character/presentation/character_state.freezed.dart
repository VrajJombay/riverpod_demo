// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CharacterState {
  AsyncValue<List<Result>?> get getCharacterData =>
      throw _privateConstructorUsedError;

  AsyncValue<List<Result>?> get getCharacterDataForSearch =>
      throw _privateConstructorUsedError;

  bool get isListView => throw _privateConstructorUsedError;

  int get currentPage => throw _privateConstructorUsedError;

  int get totalPage => throw _privateConstructorUsedError;

  AsyncValue<void> get loadingData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterStateCopyWith<CharacterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterStateCopyWith<$Res> {
  factory $CharacterStateCopyWith(
          CharacterState value, $Res Function(CharacterState) then) =
      _$CharacterStateCopyWithImpl<$Res, CharacterState>;

  @useResult
  $Res call(
      {AsyncValue<List<Result>?> getCharacterData,
      AsyncValue<List<Result>?> getCharacterDataForSearch,
      bool isListView,
      int currentPage,
      int totalPage,
      AsyncValue<void> loadingData});
}

/// @nodoc
class _$CharacterStateCopyWithImpl<$Res, $Val extends CharacterState>
    implements $CharacterStateCopyWith<$Res> {
  _$CharacterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getCharacterData = null,
    Object? getCharacterDataForSearch = null,
    Object? isListView = null,
    Object? currentPage = null,
    Object? totalPage = null,
    Object? loadingData = null,
  }) {
    return _then(_value.copyWith(
      getCharacterData: null == getCharacterData
          ? _value.getCharacterData
          : getCharacterData // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Result>?>,
      getCharacterDataForSearch: null == getCharacterDataForSearch
          ? _value.getCharacterDataForSearch
          : getCharacterDataForSearch // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Result>?>,
      isListView: null == isListView
          ? _value.isListView
          : isListView // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      loadingData: null == loadingData
          ? _value.loadingData
          : loadingData // ignore: cast_nullable_to_non_nullable
              as AsyncValue<void>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterStateImplCopyWith<$Res>
    implements $CharacterStateCopyWith<$Res> {
  factory _$$CharacterStateImplCopyWith(_$CharacterStateImpl value,
          $Res Function(_$CharacterStateImpl) then) =
      __$$CharacterStateImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {AsyncValue<List<Result>?> getCharacterData,
      AsyncValue<List<Result>?> getCharacterDataForSearch,
      bool isListView,
      int currentPage,
      int totalPage,
      AsyncValue<void> loadingData});
}

/// @nodoc
class __$$CharacterStateImplCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterStateImpl>
    implements _$$CharacterStateImplCopyWith<$Res> {
  __$$CharacterStateImplCopyWithImpl(
      _$CharacterStateImpl _value, $Res Function(_$CharacterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getCharacterData = null,
    Object? getCharacterDataForSearch = null,
    Object? isListView = null,
    Object? currentPage = null,
    Object? totalPage = null,
    Object? loadingData = null,
  }) {
    return _then(_$CharacterStateImpl(
      getCharacterData: null == getCharacterData
          ? _value.getCharacterData
          : getCharacterData // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Result>?>,
      getCharacterDataForSearch: null == getCharacterDataForSearch
          ? _value.getCharacterDataForSearch
          : getCharacterDataForSearch // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Result>?>,
      isListView: null == isListView
          ? _value.isListView
          : isListView // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      loadingData: null == loadingData
          ? _value.loadingData
          : loadingData // ignore: cast_nullable_to_non_nullable
              as AsyncValue<void>,
    ));
  }
}

/// @nodoc

class _$CharacterStateImpl implements _CharacterState {
  _$CharacterStateImpl(
      {this.getCharacterData = const AsyncData(null),
      this.getCharacterDataForSearch = const AsyncData(null),
      this.isListView = true,
      this.currentPage = 1,
      this.totalPage = 0,
      this.loadingData = const AsyncData(null)});

  @override
  @JsonKey()
  final AsyncValue<List<Result>?> getCharacterData;
  @override
  @JsonKey()
  final AsyncValue<List<Result>?> getCharacterDataForSearch;
  @override
  @JsonKey()
  final bool isListView;
  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final int totalPage;
  @override
  @JsonKey()
  final AsyncValue<void> loadingData;

  @override
  String toString() {
    return 'CharacterState(getCharacterData: $getCharacterData, getCharacterDataForSearch: $getCharacterDataForSearch, isListView: $isListView, currentPage: $currentPage, totalPage: $totalPage, loadingData: $loadingData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterStateImpl &&
            (identical(other.getCharacterData, getCharacterData) ||
                other.getCharacterData == getCharacterData) &&
            (identical(other.getCharacterDataForSearch,
                    getCharacterDataForSearch) ||
                other.getCharacterDataForSearch == getCharacterDataForSearch) &&
            (identical(other.isListView, isListView) ||
                other.isListView == isListView) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            (identical(other.loadingData, loadingData) ||
                other.loadingData == loadingData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getCharacterData,
      getCharacterDataForSearch,
      isListView,
      currentPage,
      totalPage,
      loadingData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterStateImplCopyWith<_$CharacterStateImpl> get copyWith =>
      __$$CharacterStateImplCopyWithImpl<_$CharacterStateImpl>(
          this, _$identity);
}

abstract class _CharacterState implements CharacterState {
  factory _CharacterState(
      {final AsyncValue<List<Result>?> getCharacterData,
      final AsyncValue<List<Result>?> getCharacterDataForSearch,
      final bool isListView,
      final int currentPage,
      final int totalPage,
      final AsyncValue<void> loadingData}) = _$CharacterStateImpl;

  @override
  AsyncValue<List<Result>?> get getCharacterData;

  @override
  AsyncValue<List<Result>?> get getCharacterDataForSearch;

  @override
  bool get isListView;

  @override
  int get currentPage;

  @override
  int get totalPage;

  @override
  AsyncValue<void> get loadingData;

  @override
  @JsonKey(ignore: true)
  _$$CharacterStateImplCopyWith<_$CharacterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
