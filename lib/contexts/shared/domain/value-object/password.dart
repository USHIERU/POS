import 'package:pos/contexts/shared/domain/value-object/invalid_argument_error.dart';

class Password {
  String _password;

  /// [password]
  /// - length >= 4
  /// - only numbers
  Password(String password) {
    _validatePassword(password);
  }

  void _validatePassword(String password) {
    RegExp regExp = new RegExp(r'([0-9]{4}$)');

    if (!regExp.hasMatch(password))
      throw InvalidArgumentError(
          'Class <${this.runtimeType}> does not allow the value <$password>');

    _password = password;
  }

  toString() => _password;
}