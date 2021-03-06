import 'package:pos/contexts/pos/users/domain/user.dart';

abstract class UserRepository {
  save(User user) async {}
  search(String id) async {}
}
