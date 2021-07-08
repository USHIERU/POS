import 'package:pos/context/shared/value-objects/permissions.dart';
import 'package:pos/context/user/domain/user.dart';
import 'package:pos/context/user/domain/user_repository.dart';
import 'package:uuid/uuid.dart';

class UserInMemory extends UserRepository {
  static final List<User> _users = <User>[
    User(Uuid(), 'admin', 'admin', Permissions.ADMIN),
    User(Uuid(), 'waiter', 'waiter', Permissions.WAITER),
    User(Uuid(), 'cashier', 'cashier', Permissions.CASHIER),
  ];

  @override
  Future<void> addUser(User user) async {
    _users.add(user);
  }

  @override
  Future<List<User>> getUsers() async {
    return _users;
  }

  @override
  Future<User> getUser(String name, String password) async {
    return _users
        .firstWhere((user) => user.name == name && user.password == password);
  }
}
