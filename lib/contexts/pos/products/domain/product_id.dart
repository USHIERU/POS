import 'package:pos/contexts/shared/domain/value-object/invalid_argument_error.dart';

class ProductID {
  String _id;

  ProductID(String id) {
    if (_isValid(id)) {
      _id = id;
    } else {
      throw InvalidArgumentError(
          'Class <${this.runtimeType}> does not allow the value <$id>');
    }
  }

  bool _isValid(String id) {
    return true;
  }

  @override
  String toString() => _id;
}
