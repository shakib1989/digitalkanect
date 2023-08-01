import 'package:core_sdk/wrappers.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dating_get_it.config.dart';

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureCommonDependencies(GetIt getIt) => init(getIt);

class DatingSdkGetIt extends BaseGetIt {
  static DatingSdkGetIt? _instance;

  static bool get initialized => _instance != null;

  static DatingSdkGetIt get shared {
    if (_instance != null) return _instance!;
    throw Exception("Nasa Sdk Get It not initialized");
  }

  static DatingSdkGetIt initialize() {
    if (!initialized) {
      _instance = DatingSdkGetIt._();
    }
    return _instance!;
  }

  DatingSdkGetIt._();

  @override
  void configureDependencies(GetIt getIt) {
    configureCommonDependencies(getIt);
  }
}
