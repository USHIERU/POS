import 'package:pos/context/user/domain/user.dart';
import 'package:pos/context/user/domain/user_repository.dart';

class GetUsers {
  final UserRepository _repository;

  GetUsers(this._repository);

  Future<List<User>> run(){
    return _repository.getUsers();
  }
}