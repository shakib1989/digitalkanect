import 'package:dating_sdk/data/network/dating/default_imports.dart';
import 'package:dating_sdk/dating_sdk.dart';
import 'package:digitalkanect/src/utils/internet_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'matched_user_list_cubit.freezed.dart';
part 'matched_user_list_state.dart';

class MatchedUserListCubit extends Cubit<MatchedUserListState> {
  MatchedUserListCubit() : super(MatchedUserListState.empty());

  Future<void> init() async {
    if (state.phase == MatchedUserListPhase.loading) return;
    emit(state.copyWith(phase: MatchedUserListPhase.loading));
    if (!await InternetUtils.isInternetConnected()) {
      _loadFromDB();
      return;
    }
    final result = await GetMatchedUsersUseCase().call();
    result.fold((failure) {
      _loadFromDB();
    }, (data) {
      final list = (state.nextPage == 0) ? <MatchedUserModel>[] : state.list;
      list.addAll(data);
      emit(state.copyWith(
        phase: MatchedUserListPhase.completed,
        list: list,
        nextPage: state.nextPage + 1,
      ));
    });
  }

  Future _loadFromDB() async {
    final result = await GetMatchedUsersLocalUseCase().call();
    emit(state.copyWith(
      phase: MatchedUserListPhase.completed,
      list: result,
      nextPage: 0,
    ));
  }

  Future<void> loadUsers() async {
    if (state.phase == MatchedUserListPhase.loading) return;
    emit(state.copyWith(phase: MatchedUserListPhase.loading));
    if (!await InternetUtils.isInternetConnected()) {
      emit(state.copyWith(phase: MatchedUserListPhase.noInternet));
      return;
    }
    final result = await GetMatchedUsersUseCase().call();
    result.fold((failure) {
      emit(state.copyWith(
        phase: MatchedUserListPhase.error,
        failure: failure,
      ));
    }, (data) {
      final list = (state.nextPage == 0) ? <MatchedUserModel>[] : state.list;
      list.addAll(data);
      emit(state.copyWith(
        phase: MatchedUserListPhase.completed,
        list: list,
        nextPage: state.nextPage + 1,
      ));
    });
  }

  void reset() {
    emit(state.copyWith(phase: MatchedUserListPhase.initial));
  }
}
