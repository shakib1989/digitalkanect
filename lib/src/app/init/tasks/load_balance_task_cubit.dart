import 'package:digitalkanect/src/blocs/balance/balance_cubit.dart';
import 'package:digitalkanect/src/blocs/matched_user_list/matched_user_list_cubit.dart';
import 'package:digitalkanect/src/utils/context_holder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../init_phase.dart';
import 'base_task_cubit.dart';

class LoadBalanceTaskCubit extends BaseTaskCubit {
  BuildContext get context => ContextHolder.currentContext;

  @override
  Future<void> doWork() async {
    await context.read<BalanceCubit>().loadBalance();
    Future.delayed(const Duration(milliseconds: 10), () {
      emit(state.copyWith(
        phase: InitPhase.completed,
      ));
    });
  }
}
