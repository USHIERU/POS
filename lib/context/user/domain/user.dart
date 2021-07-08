import 'package:pos/context/shared/value-objects/permissions.dart';
import 'package:uuid/uuid.dart';

class User {
  final Uuid id;
  final String name;
  final String password;
  final Permissions permisos;

  User(this.id, this.name, this.password, this.permisos);
}