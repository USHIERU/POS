part of user;

class User {
  final Uuid id;
  final String name;
  final String password;
  final Permissions permission;

  User(this.id, this.name, this.password, this.permission);
}