import 'package:dating_sdk/dating_sdk.dart';
import 'package:dating_sdk/data/network/dating/default_imports.dart';
import 'package:dating_sdk/domain/exports.dart';
import 'package:dating_sdk/domain/dating_get_it.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';

void main() {
  group('Test MatchedUserDao Use Case Test Cases', () {
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

    test('Test MatchedUserDao Mock Network', () async {
      final result = await GetMatchedUsersUseCase().call();
      expect(result.isRight(), true);
      expect(
        result.getOrElse(() => []).length,
        MockDatingResponse().matchedUserList().list.length,
      );
    });

    test('Test MatchedUserDao Local Data', () async {
      final result = await GetMatchedUsersUseCase().call();
      expect(result.isRight(), true);
      expect(
        result.getOrElse(() => []).length,
        MockDatingResponse().matchedUserList().list.length,
      );
    });

    test('Test Get User Account Portfolio Statistics Day', () async {
      await GetMatchedUsersUseCase().call();
      final list = await GetMatchedUsersLocalUseCase().call();
      expect(
        list.length,
        MockDatingResponse().matchedUserList().list.length,
      );
    });
  });
}
