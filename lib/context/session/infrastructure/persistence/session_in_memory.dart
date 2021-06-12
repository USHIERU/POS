import 'package:pos/context/session/domain/session.dart';
import 'package:pos/context/session/domain/session_repository.dart';

class SessionInMemory extends SessionRepository {
  static Session? _session;

  @override
  Session? getSession() {
    return SessionInMemory._session;
  }

  @override
  Session setSession(Session session) {
    SessionInMemory._session = session;
    return session;
  }

  @override
  void closeSession() {
    SessionInMemory._session = null;
  }
}
