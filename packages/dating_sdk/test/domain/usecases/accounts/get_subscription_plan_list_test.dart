import 'package:dating_sdk/dating_sdk.dart';
import 'package:dating_sdk/data/network/dating/default_imports.dart';
import 'package:dating_sdk/domain/exports.dart';
import 'package:dating_sdk/domain/dating_get_it.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';

void main() {
  group('Test Subscription Plan Use Case Test Cases', () {
    setUp(() async {
      WidgetsFlutterBinding.ensureInitialized();
      await Isar.initializeIsarCore(download: true);
      await DatingSdk.initialize(
          networkConfig: NetworkConfig(
        baseUrl: '',
        useMock: true,
      ));
    });

    test('Test Subscription Plan Mock Network', () async {
      final result = await GetSubscriptionPlansUseCase().call();
      expect(result.isRight(), true);
      expect(
        result.getOrElse(() => []).length,
        MockDatingResponse().subscriptionPlanList().list.length,
      );
    });
  });
}
