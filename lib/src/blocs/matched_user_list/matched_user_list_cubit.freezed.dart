// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'matched_user_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MatchedUserListState {
  MatchedUserListPhase get phase => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  int get nextPage => throw _privateConstructorUsedError;
  List<MatchedUserModel> get list => throw _privateConstructorUsedError;
  FailureModel get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MatchedUserListStateCopyWith<MatchedUserListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchedUserListStateCopyWith<$Res> {
  factory $MatchedUserListStateCopyWith(MatchedUserListState value,
          $Res Function(MatchedUserListState) then) =
      _$MatchedUserListStateCopyWithImpl<$Res, MatchedUserListState>;
  @useResult
  $Res call(
      {MatchedUserListPhase phase,
      int currentIndex,
      int nextPage,
      List<MatchedUserModel> list,
      FailureModel failure});
}

/// @nodoc
class _$MatchedUserListStateCopyWithImpl<$Res,
        $Val extends MatchedUserListState>
    implements $MatchedUserListStateCopyWith<$Res> {
  _$MatchedUserListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phase = null,
    Object? currentIndex = null,
    Object? nextPage = null,
    Object? list = null,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as MatchedUserListPhase,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MatchedUserModel>,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as FailureModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MatchedUserListStateCopyWith<$Res>
    implements $MatchedUserListStateCopyWith<$Res> {
  factory _$$_MatchedUserListStateCopyWith(_$_MatchedUserListState value,
          $Res Function(_$_MatchedUserListState) then) =
      __$$_MatchedUserListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MatchedUserListPhase phase,
      int currentIndex,
      int nextPage,
      List<MatchedUserModel> list,
      FailureModel failure});
}

/// @nodoc
class __$$_MatchedUserListStateCopyWithImpl<$Res>
    extends _$MatchedUserListStateCopyWithImpl<$Res, _$_MatchedUserListState>
    implements _$$_MatchedUserListStateCopyWith<$Res> {
  __$$_MatchedUserListStateCopyWithImpl(_$_MatchedUserListState _value,
      $Res Function(_$_MatchedUserListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phase = null,
    Object? currentIndex = null,
    Object? nextPage = null,
    Object? list = null,
    Object? failure = null,
  }) {
    return _then(_$_MatchedUserListState(
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as MatchedUserListPhase,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MatchedUserModel>,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as FailureModel,
    ));
  }
}

/// @nodoc

class _$_MatchedUserListState implements _MatchedUserListState {
  const _$_MatchedUserListState(
      {required this.phase,
      required this.currentIndex,
      required this.nextPage,
      required final List<MatchedUserModel> list,
      required this.failure})
      : _list = list;

  @override
  final MatchedUserListPhase phase;
  @override
  final int currentIndex;
  @override
  final int nextPage;
  final List<MatchedUserModel> _list;
  @override
  List<MatchedUserModel> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final FailureModel failure;

  @override
  String toString() {
    return 'MatchedUserListState(phase: $phase, currentIndex: $currentIndex, nextPage: $nextPage, list: $list, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchedUserListState &&
            (identical(other.phase, phase) || other.phase == phase) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phase, currentIndex, nextPage,
      const DeepCollectionEquality().hash(_list), failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchedUserListStateCopyWith<_$_MatchedUserListState> get copyWith =>
      __$$_MatchedUserListStateCopyWithImpl<_$_MatchedUserListState>(
          this, _$identity);
}

abstract class _MatchedUserListState implements MatchedUserListState {
  const factory _MatchedUserListState(
      {required final MatchedUserListPhase phase,
      required final int currentIndex,
      required final int nextPage,
      required final List<MatchedUserModel> list,
      required final FailureModel failure}) = _$_MatchedUserListState;

  @override
  MatchedUserListPhase get phase;
  @override
  int get currentIndex;
  @override
  int get nextPage;
  @override
  List<MatchedUserModel> get list;
  @override
  FailureModel get failure;
  @override
  @JsonKey(ignore: true)
  _$$_MatchedUserListStateCopyWith<_$_MatchedUserListState> get copyWith =>
      throw _privateConstructorUsedError;
}
