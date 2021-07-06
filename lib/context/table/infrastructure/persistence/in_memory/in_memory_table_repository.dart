import 'package:pos/context/table/domain/table.dart';
import 'package:pos/context/table/domain/table_repository.dart';

class InMemoryTableRepository extends TableRepository {
  static final List<Table> _tables = List<Table>.empty(growable: true);

  InMemoryTableRepository(){
    _tables.add(Table('id', 'A1', 10, 10));
  }

  @override
  Future<void> addTable(Table table) async {
    _tables.add(table);
  }

  @override
  Future<List<Table>> getTables() async {
    return _tables;
  }
}
