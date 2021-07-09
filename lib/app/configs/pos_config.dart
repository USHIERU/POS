import 'package:context/context.dart' as Context;

class POSConfig {
  final Context.AbstractFactoryRepository factory;
  static POSConfig? _instance;

  POSConfig._(this.factory);

  factory POSConfig({Context.AbstractFactoryRepository? factory}) {
    if (_instance != null) return _instance!;
    if (factory != null) return _instance ??= POSConfig._(factory);
    throw '<POSConfig> AbstractFactoryRepository was not provided';
  }

  Future<void> init() async {
    if (this.factory is Context.HiveFactory) {
      // HiveConnection().connect();
    }
  }
}
