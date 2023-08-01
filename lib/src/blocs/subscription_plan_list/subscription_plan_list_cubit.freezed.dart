// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_plan_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubscriptionPlanListState {
  SubscriptionPlanListPhase get phase => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  int get nextPage => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;
  List<SubscriptionPlanModel> get list => throw _privateConstructorUsedError;
  FailureModel get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubscriptionPlanListStateCopyWith<SubscriptionPlanListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionPlanListStateCopyWith<$Res> {
  factory $SubscriptionPlanListStateCopyWith(SubscriptionPlanListState value,
          $Res Function(SubscriptionPlanListState) then) =
      _$SubscriptionPlanListStateCopyWithImpl<$Res, SubscriptionPlanListState>;
  @useResult
  $Res call(
      {SubscriptionPlanListPhase phase,
      int currentIndex,
      int nextPage,
      int selectedIndex,
      List<SubscriptionPlanModel> list,
      FailureModel failure});
}

/// @nodoc
class _$SubscriptionPlanListStateCopyWithImpl<$Res,
        $Val extends SubscriptionPlanListState>
    implements $SubscriptionPlanListStateCopyWith<$Res> {
  _$SubscriptionPlanListStateCopyWithImpl(this._value, this._then);

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
    Object? selectedIndex = null,
    Object? list = null,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlanListPhase,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionPlanModel>,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as FailureModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubscriptionPlanListStateCopyWith<$Res>
    implements $SubscriptionPlanListStateCopyWith<$Res> {
  factory _$$_SubscriptionPlanListStateCopyWith(
          _$_SubscriptionPlanListState value,
          $Res Function(_$_SubscriptionPlanListState) then) =
      __$$_SubscriptionPlanListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SubscriptionPlanListPhase phase,
      int currentIndex,
      int nextPage,
      int selectedIndex,
      List<SubscriptionPlanModel> list,
      FailureModel failure});
}

/// @nodoc
class __$$_SubscriptionPlanListStateCopyWithImpl<$Res>
    extends _$SubscriptionPlanListStateCopyWithImpl<$Res,
        _$_SubscriptionPlanListState>
    implements _$$_SubscriptionPlanListStateCopyWith<$Res> {
  __$$_SubscriptionPlanListStateCopyWithImpl(
      _$_SubscriptionPlanListState _value,
      $Res Function(_$_SubscriptionPlanListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phase = null,
    Object? currentIndex = null,
    Object? nextPage = null,
    Object? selectedIndex = null,
    Object? list = null,
    Object? failure = null,
  }) {
    return _then(_$_SubscriptionPlanListState(
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlanListPhase,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionPlanModel>,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as FailureModel,
    ));
  }
}

/// @nodoc

class _$_SubscriptionPlanListState implements _SubscriptionPlanListState {
  const _$_SubscriptionPlanListState(
      {required this.phase,
      required this.currentIndex,
      required this.nextPage,
      required this.selectedIndex,
      required final List<SubscriptionPlanModel> list,
      required this.failure})
      : _list = list;

  @override
  final SubscriptionPlanListPhase phase;
  @override
  final int currentIndex;
  @override
  final int nextPage;
  @override
  final int selectedIndex;
  final List<SubscriptionPlanModel> _list;
  @override
  List<SubscriptionPlanModel> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final FailureModel failure;

  @override
  String toString() {
    return 'SubscriptionPlanListState(phase: $phase, currentIndex: $currentIndex, nextPage: $nextPage, selectedIndex: $selectedIndex, list: $list, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubscriptionPlanListState &&
            (identical(other.phase, phase) || other.phase == phase) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phase, currentIndex, nextPage,
      selectedIndex, const DeepCollectionEquality().hash(_list), failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubscriptionPlanListStateCopyWith<_$_SubscriptionPlanListState>
      get copyWith => __$$_SubscriptionPlanListStateCopyWithImpl<
          _$_SubscriptionPlanListState>(this, _$identity);
}

abstract class _SubscriptionPlanListState implements SubscriptionPlanListState {
  const factory _SubscriptionPlanListState(
      {required final SubscriptionPlanListPhase phase,
      required final int currentIndex,
      required final int nextPage,
      required final int selectedIndex,
      required final List<SubscriptionPlanModel> list,
      required final FailureModel failure}) = _$_SubscriptionPlanListState;

  @override
  SubscriptionPlanListPhase get phase;
  @override
  int get currentIndex;
  @override
  int get nextPage;
  @override
  int get selectedIndex;
  @override
  List<SubscriptionPlanModel> get list;
  @override
  FailureModel get failure;
  @override
  @JsonKey(ignore: true)
  _$$_SubscriptionPlanListStateCopyWith<_$_SubscriptionPlanListState>
      get copyWith => throw _privateConstructorUsedError;
}
