part of sesion;

abstract class SessionRepository {
  Session? getSession();
  Session setSession(Session session);
  void closeSession();
}
