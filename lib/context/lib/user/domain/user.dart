part of user;

class User {
  final String id;
  final String name;
  final String password;
  final Permissions permission;

  User(Uuid id, this.name, this.password, this.permission): this.id = id.v4();

  factory User.fromPrimitives(String name, String password, Permissions permission){
    return User(Uuid(), name, password, permission);
  }
}