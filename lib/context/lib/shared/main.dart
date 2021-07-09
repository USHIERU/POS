library shared;

import 'package:context/cart/main.dart';
import 'package:context/category/main.dart';
import 'package:context/product/main.dart';
import 'package:context/session/main.dart';
import 'package:context/table/main.dart';
import 'package:context/user/main.dart';

part 'domain/abstract_factory_repository.dart';
part 'domain/value-objects/invalid_argument_error.dart';
part 'domain/value-objects/permissions.dart';
part 'infrastructure/factory/in_memory_factory.dart';
part 'infrastructure/factory/hive_factory.dart';