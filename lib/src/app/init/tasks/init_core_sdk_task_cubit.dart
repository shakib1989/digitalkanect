import 'package:core_sdk/core_sdk.dart';

import '../init_phase.dart';
import 'base_task_cubit.dart';

class InitCoreSdkTaskCubit extends BaseTaskCubit {
  @override
  Future<void> doWork() async {
    try {
      await CoreSdk.initialize();

      Future.delayed(const Duration(milliseconds: 10), () {
        emit(
          state.copyWith(phase: InitPhase.completed),
        );
      });
    } on Exception catch (e) {
      Future.delayed(const Duration(milliseconds: 10), () {
        emit(
          state.copyWith(
            phase: InitPhase.error,
            message: e.toString(),
          ),
        );
      });
    }
  }
}
