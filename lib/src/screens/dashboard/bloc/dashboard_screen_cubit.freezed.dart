// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardScreenState {
  int get selectedIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardScreenStateCopyWith<DashboardScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardScreenStateCopyWith<$Res> {
  factory $DashboardScreenStateCopyWith(DashboardScreenState value,
          $Res Function(DashboardScreenState) then) =
      _$DashboardScreenStateCopyWithImpl<$Res, DashboardScreenState>;
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class _$DashboardScreenStateCopyWithImpl<$Res,
        $Val extends DashboardScreenState>
    implements $DashboardScreenStateCopyWith<$Res> {
  _$DashboardScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DashboardScreenStateCopyWith<$Res>
    implements $DashboardScreenStateCopyWith<$Res> {
  factory _$$_DashboardScreenStateCopyWith(_$_DashboardScreenState value,
          $Res Function(_$_DashboardScreenState) then) =
      __$$_DashboardScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class __$$_DashboardScreenStateCopyWithImpl<$Res>
    extends _$DashboardScreenStateCopyWithImpl<$Res, _$_DashboardScreenState>
    implements _$$_DashboardScreenStateCopyWith<$Res> {
  __$$_DashboardScreenStateCopyWithImpl(_$_DashboardScreenState _value,
      $Res Function(_$_DashboardScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_$_DashboardScreenState(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DashboardScreenState implements _DashboardScreenState {
  const _$_DashboardScreenState({required this.selectedIndex});

  @override
  final int selectedIndex;

  @override
  String toString() {
    return 'DashboardScreenState(selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DashboardScreenState &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DashboardScreenStateCopyWith<_$_DashboardScreenState> get copyWith =>
      __$$_DashboardScreenStateCopyWithImpl<_$_DashboardScreenState>(
          this, _$identity);
}

abstract class _DashboardScreenState implements DashboardScreenState {
  const factory _DashboardScreenState({required final int selectedIndex}) =
      _$_DashboardScreenState;

  @override
  int get selectedIndex;
  @override
  @JsonKey(ignore: true)
  _$$_DashboardScreenStateCopyWith<_$_DashboardScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
