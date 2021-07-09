part of user;

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
