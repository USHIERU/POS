part of table;

abstract class TableRepository {
  Future<List<Table>> getTables();
  Future<void> addTable(Table table);
}