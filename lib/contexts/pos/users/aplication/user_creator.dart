import 'package:pos/contexts/pos/users/domain/user.dart';
import 'package:pos/contexts/pos/users/domain/user_repository.dart';

class UserCreator {
  UserRepository _repository;

  UserCreator(this._repository);

  run(String name, String surname, password) async {
    var user = User(name, surname, password);

    await _repository.save(user);
  }
}
