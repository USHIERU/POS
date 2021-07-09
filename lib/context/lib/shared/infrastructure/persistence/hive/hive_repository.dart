// import 'package:hive/hive.dart';

// abstract class HiveRepository<T> {
//   HiveRepository(String boxName, TypeAdapter<T> typeAdapter,
//       {void Function()? callback}) {
//     if (!Hive.isAdapterRegistered(typeAdapter.typeId)) {
//       Hive.registerAdapter<T>(typeAdapter);
//       print('[HIVE 🍯] Adapter [${typeAdapter.runtimeType}] registered');
//     }
//     if (!Hive.isBoxOpen(boxName)) {
//       Hive.openBox<T>(boxName).then((_) {
//         print('[HIVE 🍯] $boxName OPEN');
//         if (callback != null) callback();
//       });
//     }
//   }
// }
