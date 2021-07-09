import 'package:flutter_test/flutter_test.dart';
import 'package:context/context.dart';

main() {
  late AbstractFactoryRepository factory;

  setUp(() {
    factory = InMemoryFactory();
  });

  group('Session', () {
    test('Session should be saved in memory and should be a Waiter', () async {
      final setSession = SetSession(factory.getSessionRepository);
      final user =
          await GetUser(factory.getUserRepository).run('waiter', 'waiter');
      final session = Session(user);

      final waiterSession = setSession.run(session);

      expect(waiterSession.user.permission, Permissions.WAITER);
    });
  });
}
