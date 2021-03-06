class User {
  String _name;
  String _surname;
  String _password;

  User(this._name, this._surname, this._password);

  get name => _name;

  get surname => _surname;

  get password => _password;
}
