part of 'balance_cubit.dart';

enum BalancePhase { initial, loading, error, completed, noInternet }

@freezed
class BalanceState with _$BalanceState {
  const factory BalanceState({
    required BalancePhase phase,
    required BalanceModel balance,
    required FailureModel failure,
  }) = _BalanceState;

  factory BalanceState.empty() => BalanceState(
        phase: BalancePhase.initial,
        balance: BalanceModel.empty(),
        failure: FailureModel.empty(),
      );
}
