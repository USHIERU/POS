library inventory;

import 'package:context/product/main.dart';
import 'package:uuid/uuid.dart';

part 'application/add_product.dart';
part 'application/delete_product.dart';
part 'application/add_quantity.dart';
part 'application/substract_quantity.dart';
part 'domain/value-objects/unit.dart';
part 'domain/inventory_product.dart';
part 'domain/inventory_repository.dart';
part 'infrastructure/persistence/inventory_in_memory.dart';