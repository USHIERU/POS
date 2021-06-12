import 'package:pos/context/session/domain/session.dart';

abstract class SessionRepository {
  Session? getSession();
  Session setSession(Session session);
  void closeSession();
}
