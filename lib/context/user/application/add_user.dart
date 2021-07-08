import 'package:pos/context/user/domain/user.dart';
import 'package:pos/context/user/domain/user_repository.dart';

class AddUser {
  final UserRepository _repository;

  AddUser(this._repository);

  Future<void> run(User user) async {
    _repository.addUser(user);
  }
}
