import 'package:pos/context/session/domain/session.dart';
import 'package:pos/context/session/domain/session_repository.dart';

class GetSession {
  final SessionRepository _repository;

  GetSession(this._repository);

  Session? run() {
    return  _repository.getSession();
  }
}
