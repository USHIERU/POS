import 'package:pos/context/table/domain/table.dart';
import 'package:pos/context/table/domain/table_repository.dart';

class GetTables {
  final TableRepository _repository;

  GetTables(this._repository);

  Future<List<Table>> run() {
    return _repository.getTables();
  }
}
