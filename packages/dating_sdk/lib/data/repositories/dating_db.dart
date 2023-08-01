import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'entities/entities.dart';

class DatingDB {
  static DatingDB? _instance;

  static bool get initialized => _instance != null;

  static DatingDB get shared {
    if (_instance != null) return _instance!;
    throw Exception("Dating DB Not Initialized");
  }

  late Isar database;

  static Future<DatingDB> initialize() async {
    if (_instance == null) {
      _instance = DatingDB._();
      await _instance!.init();
    }
    return _instance!;
  }

  DatingDB._();

  Future<void> init() async {
   // final dir = await getApplicationDocumentsDirectory();
    database = await Isar.openSync(
      [
        MatchedUserEntitySchema,
      ],
      name: 'dating_db',
      //  directory: dir.path,
    );
  }
}
