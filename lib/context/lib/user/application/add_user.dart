part of user;

class AddUser {
  final UserRepository _repository;

  AddUser(this._repository);

  Future<void> run(User user) async {
    _repository.addUser(user);
  }
}
