import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_screen_cubit.freezed.dart';
part 'dashboard_screen_state.dart';

class DashboardScreenCubit extends Cubit<DashboardScreenState> {
  DashboardScreenCubit() : super(DashboardScreenState.empty());

  void setSelectedIndex(int index){
    if(state.selectedIndex != index){
      emit(state.copyWith(selectedIndex: index));
    }
  }
}
