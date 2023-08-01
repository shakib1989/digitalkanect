import 'package:dating_sdk/data/network/dating/default_imports.dart';
import 'package:dating_sdk/dating_sdk.dart';
import 'package:digitalkanect/src/utils/internet_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:styles/styles.dart';

part 'balance_cubit.freezed.dart';
part 'balance_state.dart';

class BalanceCubit extends Cubit<BalanceState> {
  BalanceCubit() : super(BalanceState.empty());

  Future<void> loadBalance() async {
    if (state.phase == BalancePhase.loading) return;
    emit(state.copyWith(phase: BalancePhase.loading));
    if (!await InternetUtils.isInternetConnected()) {
      emit(state.copyWith(phase: BalancePhase.noInternet));
      return;
    }
    final result = await GetBalanceUseCase().call();
    result.fold((failure) {
      emit(state.copyWith(
        phase: BalancePhase.error,
        failure: failure,
      ));
    }, (data) {
      emit(state.copyWith(
        phase: BalancePhase.completed,
        balance: data,
      ));
    });
  }
}
