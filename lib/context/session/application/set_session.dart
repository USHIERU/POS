import 'package:pos/context/session/domain/session.dart';
import 'package:pos/context/session/domain/session_repository.dart';

class SetSession {
  final SessionRepository _repository;

  SetSession(this._repository);

  Session run(Session session) {
    return  _repository.setSession(session);
  }
}
