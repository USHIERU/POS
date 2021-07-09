part of user;

class GetUser {
  final UserRepository _repository;

  GetUser(this._repository);

  Future<User> run(String user, String password) {
    return _repository.getUser(user, password);
  }
}
