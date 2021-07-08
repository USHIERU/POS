import 'package:pos/context/shared/value-objects/permissions.dart';
import 'package:pos/context/user/domain/user.dart';

abstract class UserRepository {
  Future<List<User>> getUsers();
  Future<List<User>> getUsersByPermission(Permissions permission);
  Future<User> getUser(String user, String password);
  Future<void> addUser(User user);  
}