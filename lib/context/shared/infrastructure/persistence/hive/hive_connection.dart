import 'dart:io';

import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pos/context/shared/infrastructure/persistence/connection_manager.dart';

class HiveConnection extends ConnectionManager {
  @override
  Future<void> close() async {
    await Hive.close();
  }

  @override
  Future<void> connect() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocDir.path);
    print('[HIVE 🍯] init on ${appDocDir.path}');
  }
}
