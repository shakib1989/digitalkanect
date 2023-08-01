import 'package:dating_sdk/dating_sdk.dart';
import 'package:dating_sdk/data/network/dating/default_imports.dart';
import 'package:dating_sdk/domain/exports.dart';
import 'package:dating_sdk/domain/dating_get_it.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';

void main() {
  group('Test Get Balance Use Case Test Cases', () {
    setUp(() async {
      WidgetsFlutterBinding.ensureInitialized();
      await Isar.initializeIsarCore(download: true);
      await DatingSdk.initialize(
          networkConfig: NetworkConfig(
        baseUrl: '',
        useMock: true,
      ));
    });

    test('Test Get Balance Mock Network', () async {
      final result = await GetBalanceUseCase().call();
      expect(result.isRight(), true);
      final balance = result.getOrElse(() => BalanceModel.empty());
      final data = MockDatingResponse().balance().data;
      expect(balance.id, data.id);
      expect(balance.messages, data.messages);
      expect(balance.phoneCallInSec, data.phoneCallInSec);
      expect(balance.videoCallInSec, data.videoCallInSec);
    });
  });
}
