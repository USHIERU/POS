import 'package:flutter_test/flutter_test.dart';
import 'package:context/context.dart';

main() {
  late AbstractFactoryRepository factory;

  setUp(() {
    factory = InMemoryFactory();
  });

  group('Session', () {
    test('Session should be saved in memory and should be a Waiter', () async {
      final userTest = 'Ushieru';
      final passwordTest = 'password';
      final addUser = AddUser(factory.getUserRepository);
      final setSession = SetSession(factory.getSessionRepository);
      final getUser = GetUser(factory.getUserRepository);

      addUser
          .run(User.fromPrimitives(userTest, passwordTest, Permissions.WAITER));
      final user = await getUser.run(userTest, passwordTest);
      final waiterSession = setSession.run(Session(user));

      expect(waiterSession.user.permission, Permissions.WAITER);
    });
  });
}
