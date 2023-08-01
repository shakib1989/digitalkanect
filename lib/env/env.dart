import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../bootstrap.dart';
import '../src/app/application.dart';
import '../src/app/init/exports.dart';

abstract class Env {
  Env() {
    shared = this;
    init();
  }

  static late Env shared;
  bool useMockApi = false;
  abstract String networkBaseUrl;

  Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    Paint.enableDithering = true;
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    startApp();
  }

  Future<void> startApp() async {
    bootstrap(() => const Application());
  }
}
