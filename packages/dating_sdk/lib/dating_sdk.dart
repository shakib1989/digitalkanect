library dating_sdk;

export 'package:dating_sdk/domain/exports.dart';

import 'package:core_sdk/core_sdk.dart';

import 'data/config/network_config.dart';
import 'data/network/dating/dating_network_impl.dart';
import 'data/repositories/dating_db.dart';
import 'data/repositories/matched_user_repository_impl.dart';
import 'domain/dating_get_it.dart';
import 'domain/networks/dating_network.dart';
import 'domain/repositories/matched_user_repository.dart';

class DatingSdk {
  static DatingSdk? _instance;

  static bool get initialized => _instance != null;

  static DatingSdk get shared {
    if (_instance != null) return _instance!;
    throw Exception("Dating Sdk not initialized");
  }

  static Future<DatingSdk> initialize({
    required NetworkConfig networkConfig,
  }) async {
    if (!initialized) {
      final sdk = DatingSdk._(
        networkConfig: networkConfig,
      );
      await sdk.init();
      _instance = sdk;
    }
    return _instance!;
  }

  late final NetworkConfig networkConfig;

  DatingSdk._({required this.networkConfig});

  Future<void> init() async {
    CoreSdk.initialize();
    await DatingDB.initialize();
    DatingSdkGetIt.initialize();
    DatingSdkGetIt.shared.registerLazySingleton<DatingNetwork>(
      () => DatingNetworkImpl(
        networkConfig,
      ),
    );
    // final pref = await SharedPreferences.getInstance();
    DatingSdkGetIt.shared.registerLazySingleton<MatchedUserRepository>(
      () => MatchedUserRepositoryImpl(),
    );
  }
}
