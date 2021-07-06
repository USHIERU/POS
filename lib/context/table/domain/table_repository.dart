import 'package:pos/context/table/domain/table.dart';

abstract class TableRepository {
  Future<List<Table>> getTables();
  Future<void> addTable(Table table);
}