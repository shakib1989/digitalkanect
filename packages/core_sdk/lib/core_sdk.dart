library core_sdk;

import 'package:core_sdk/data/repositories/nasa_db.dart';

import 'data/config/network_config.dart';
import 'data/network/nasa/nasa_network_impl.dart';
import 'data/repositories/rover_photos_repository_impl.dart';
import 'domain/nasa_get_it.dart';
import 'domain/networks/nasa_network.dart';
import 'domain/repositories/rover_photos_repository.dart';

class CoreSdk {
  static CoreSdk? _instance;

  static bool get initialized => _instance != null;

  static CoreSdk get shared {
    if (_instance != null) return _instance!;
    throw Exception("Core Sdk not initialized");
  }

  static Future<CoreSdk> initialize() async {
    if (!initialized) {
      final sdk = CoreSdk._();
      await sdk.init();
      _instance = sdk;
    }
    return _instance!;
  }

  CoreSdk._();

  Future<void> init() async {}
}
