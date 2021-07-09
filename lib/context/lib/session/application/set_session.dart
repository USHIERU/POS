part of sesion;

class SetSession {
  final SessionRepository _repository;

  SetSession(this._repository);

  Session run(Session session) {
    return  _repository.setSession(session);
  }
}
