import 'package:dating_sdk/dating_sdk.dart';
import 'package:dating_sdk/data/config/network_config.dart';
import 'package:dating_sdk/data/network/default_imports.dart';
import 'package:dating_sdk/domain/dating_get_it.dart';

import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';

void main() {
  group('Test RoverPhotoDao Test Cases', () {
    setUp(() async {
      WidgetsFlutterBinding.ensureInitialized();
      await Isar.initializeIsarCore(download: true);
      await DatingSdk.initialize(
          networkConfig: NetworkConfig(
        baseUrl: '',
        useMock: true,
      ));
      final repo = DatingSdkGetIt.shared.get<MatchedUserRepository>();
      await repo.clear();
    });

    test('Test Add Rover Photos', () async {
      final repo = DatingSdkGetIt.shared.get<MatchedUserRepository>();
      await repo.saveAll([MatchedUserModel()]);
      final list = await repo.getAll();
      expect(list.length, 1);
    });

    test('Test Delete Rover Photos', () async {
      final repo = DatingSdkGetIt.shared.get<MatchedUserRepository>();
      await repo.saveAll([MatchedUserModel()]);
      await repo.clear();
      final list = await repo.getAll();
      expect(list.length, 0);
    });
  });
}
