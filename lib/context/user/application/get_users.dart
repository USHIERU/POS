import 'package:pos/context/shared/value-objects/permissions.dart';
import 'package:pos/context/user/domain/user.dart';
import 'package:pos/context/user/domain/user_repository.dart';

class GetUsers {
  final UserRepository _repository;

  GetUsers(this._repository);

  Future<List<User>> run() {
    return _repository.getUsers();
  }

  Future<List<User>> byPermission(Permissions permission) {
    return _repository.getUsersByPermission(permission);
  }
}
