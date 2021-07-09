part of user;

abstract class UserRepository {
  Future<List<User>> getUsers();
  Future<List<User>> getUsersByPermission(Permissions permission);
  Future<User> getUser(String user, String password);
  Future<void> addUser(User user);  
}