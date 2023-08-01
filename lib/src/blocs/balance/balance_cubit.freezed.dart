// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balance_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BalanceState {
  BalancePhase get phase => throw _privateConstructorUsedError;
  BalanceModel get balance => throw _privateConstructorUsedError;
  FailureModel get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BalanceStateCopyWith<BalanceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalanceStateCopyWith<$Res> {
  factory $BalanceStateCopyWith(
          BalanceState value, $Res Function(BalanceState) then) =
      _$BalanceStateCopyWithImpl<$Res, BalanceState>;
  @useResult
  $Res call({BalancePhase phase, BalanceModel balance, FailureModel failure});
}

/// @nodoc
class _$BalanceStateCopyWithImpl<$Res, $Val extends BalanceState>
    implements $BalanceStateCopyWith<$Res> {
  _$BalanceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phase = null,
    Object? balance = null,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as BalancePhase,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as BalanceModel,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as FailureModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BalanceStateCopyWith<$Res>
    implements $BalanceStateCopyWith<$Res> {
  factory _$$_BalanceStateCopyWith(
          _$_BalanceState value, $Res Function(_$_BalanceState) then) =
      __$$_BalanceStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BalancePhase phase, BalanceModel balance, FailureModel failure});
}

/// @nodoc
class __$$_BalanceStateCopyWithImpl<$Res>
    extends _$BalanceStateCopyWithImpl<$Res, _$_BalanceState>
    implements _$$_BalanceStateCopyWith<$Res> {
  __$$_BalanceStateCopyWithImpl(
      _$_BalanceState _value, $Res Function(_$_BalanceState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phase = null,
    Object? balance = null,
    Object? failure = null,
  }) {
    return _then(_$_BalanceState(
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as BalancePhase,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as BalanceModel,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as FailureModel,
    ));
  }
}

/// @nodoc

class _$_BalanceState implements _BalanceState {
  const _$_BalanceState(
      {required this.phase, required this.balance, required this.failure});

  @override
  final BalancePhase phase;
  @override
  final BalanceModel balance;
  @override
  final FailureModel failure;

  @override
  String toString() {
    return 'BalanceState(phase: $phase, balance: $balance, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BalanceState &&
            (identical(other.phase, phase) || other.phase == phase) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phase, balance, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BalanceStateCopyWith<_$_BalanceState> get copyWith =>
      __$$_BalanceStateCopyWithImpl<_$_BalanceState>(this, _$identity);
}

abstract class _BalanceState implements BalanceState {
  const factory _BalanceState(
      {required final BalancePhase phase,
      required final BalanceModel balance,
      required final FailureModel failure}) = _$_BalanceState;

  @override
  BalancePhase get phase;
  @override
  BalanceModel get balance;
  @override
  FailureModel get failure;
  @override
  @JsonKey(ignore: true)
  _$$_BalanceStateCopyWith<_$_BalanceState> get copyWith =>
      throw _privateConstructorUsedError;
}
