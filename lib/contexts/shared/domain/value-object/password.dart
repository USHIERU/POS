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
    // TODO: Fix RegExp
    RegExp regExp = new RegExp(r'([1-9]{4}\w)');

    if (!regExp.hasMatch(password))
      throw InvalidArgumentError(
          'Class <${this.runtimeType}> does not allow the value <$password>');

    _password = password;
  }

  toString() => _password;
}

main() {
  try {
    Password('1231');
  } on InvalidArgumentError catch (e) {
    print(e.errMsg);
  }
}
