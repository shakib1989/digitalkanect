part of 'matched_user_list_cubit.dart';

enum MatchedUserListPhase { initial, loading, error, completed, noInternet }

@freezed
class MatchedUserListState with _$MatchedUserListState {
  const factory MatchedUserListState({
    required MatchedUserListPhase phase,
    required int currentIndex,
    required int nextPage,
    required List<MatchedUserModel> list,
    required FailureModel failure,
  }) = _MatchedUserListState;

  factory MatchedUserListState.empty() => MatchedUserListState(
        phase: MatchedUserListPhase.initial,
        currentIndex: 0,
        nextPage: 0,
        list: [],
        failure: FailureModel.empty(),
      );
}
