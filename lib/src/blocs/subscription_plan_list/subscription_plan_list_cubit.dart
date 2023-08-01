import 'package:dating_sdk/data/network/dating/default_imports.dart';
import 'package:dating_sdk/dating_sdk.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/internet_utils.dart';

part 'subscription_plan_list_cubit.freezed.dart';
part 'subscription_plan_list_state.dart';

class SubscriptionPlanListCubit extends Cubit<SubscriptionPlanListState> {
  SubscriptionPlanListCubit() : super(SubscriptionPlanListState.empty());

  void setSelected(int index){
    emit(state.copyWith(selectedIndex: index));
  }

  Future<void> loadSubscriptionPlans() async {
    if (state.phase == SubscriptionPlanListPhase.loading) return;
    emit(state.copyWith(phase: SubscriptionPlanListPhase.loading));
    if (!await InternetUtils.isInternetConnected()) {
      emit(state.copyWith(phase: SubscriptionPlanListPhase.noInternet));
      return;
    }
    final result = await GetSubscriptionPlansUseCase().call();
    result.fold((failure) {
      emit(state.copyWith(
        phase: SubscriptionPlanListPhase.error,
        failure: failure,
      ));
    }, (data) {
      emit(state.copyWith(
        phase: SubscriptionPlanListPhase.completed,
        list: data,
      ));
    });
  }
}
