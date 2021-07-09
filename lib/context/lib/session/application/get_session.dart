part of sesion;

class GetSession {
  final SessionRepository _repository;

  GetSession(this._repository);

  Session? run() {
    return  _repository.getSession();
  }
}
