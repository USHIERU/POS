abstract class ConnectionManager<T> {
  Future<void> connect();
  Future<void> close();
}
