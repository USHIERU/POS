abstract class ConnectionManager<T> {
  Future<void> connect() async {}
  Future<void> close() async {}
}
