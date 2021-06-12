import 'package:pos/context/session/domain/session_repository.dart';

class CloseSession{
  final SessionRepository _repository;

  CloseSession(this._repository);

  run(){
    _repository.closeSession();
  }
}