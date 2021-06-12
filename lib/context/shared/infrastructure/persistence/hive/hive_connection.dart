import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pos/context/shared/infrastructure/persistence/connection_manager.dart';

class HiveConnection extends ConnectionManager {
  @override
  Future<void> close() async {
    await Hive.close();
  }

  @override
  Future<void> connect() async {
    Hive.initFlutter();
    print('[HIVE 🍯] init');
  }
}
