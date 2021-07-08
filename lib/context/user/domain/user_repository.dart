import 'package:pos/context/user/domain/user.dart';

abstract class UserRepository {
  Future<List<User>> getUsers();
  Future<User> getUser(String user, String password);
  Future<void> addUser(User user);  
}