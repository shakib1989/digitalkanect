part of 'subscription_plan_list_cubit.dart';

enum SubscriptionPlanListPhase {
  initial,
  loading,
  error,
  completed,
  noInternet
}

@freezed
class SubscriptionPlanListState with _$SubscriptionPlanListState {
  const factory SubscriptionPlanListState({
    required SubscriptionPlanListPhase phase,
    required int currentIndex,
    required int nextPage,
    required int selectedIndex,
    required List<SubscriptionPlanModel> list,
    required FailureModel failure,
  }) = _SubscriptionPlanListState;

  factory SubscriptionPlanListState.empty() => SubscriptionPlanListState(
        phase: SubscriptionPlanListPhase.initial,
        currentIndex: 0,
        nextPage: 0,
    selectedIndex: 0,
        list: [],
        failure: FailureModel.empty(),
      );
}
