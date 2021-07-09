part of sesion;

class CloseSession{
  final SessionRepository _repository;

  CloseSession(this._repository);

  run(){
    _repository.closeSession();
  }
}