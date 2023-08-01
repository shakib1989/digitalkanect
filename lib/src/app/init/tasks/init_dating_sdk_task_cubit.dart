import 'package:dating_sdk/data/config/network_config.dart';
import 'package:dating_sdk/dating_sdk.dart';
import 'package:digitalkanect/env/env.dart';

import '../init_phase.dart';
import 'base_task_cubit.dart';

class InitDatingSdkTaskCubit extends BaseTaskCubit {
  @override
  Future<void> doWork() async {
    try {
      await DatingSdk.initialize(
        networkConfig: NetworkConfig(
          baseUrl: Env.shared.networkBaseUrl,
          useMock: Env.shared.useMockApi,
        ),
      );

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
