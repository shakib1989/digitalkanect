
part of 'dashboard_screen_cubit.dart';

@freezed
class DashboardScreenState with _$DashboardScreenState {
  const factory DashboardScreenState({
    required int selectedIndex
  }) = _DashboardScreenState;

  factory DashboardScreenState.empty() => DashboardScreenState(
    selectedIndex: 0,
  );

}
