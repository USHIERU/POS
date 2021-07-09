part of table;

class GetTables {
  final TableRepository _repository;

  GetTables(this._repository);

  Future<List<Table>> run() {
    return _repository.getTables();
  }
}
