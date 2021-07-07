import 'package:pos/context/shared/domain/abstract_factory_repository.dart';
import 'package:pos/context/shared/infrastructure/factory/hive_factory.dart';
import 'package:pos/context/shared/infrastructure/persistence/hive/hive_connection.dart';

class POSConfig {
  final AbstractFactoryRepository factory;
  static POSConfig? _instance;

  POSConfig._(this.factory);

  factory POSConfig({AbstractFactoryRepository? factory}) {
    if (_instance != null) return _instance!;
    if (factory != null) return _instance ??= POSConfig._(factory);
    throw '<POSConfig> AbstractFactoryRepository was not provided';
  }

  Future<void> init() async {
    if (this.factory is HiveFactory) {
      HiveConnection().connect();
    }
  }
}
