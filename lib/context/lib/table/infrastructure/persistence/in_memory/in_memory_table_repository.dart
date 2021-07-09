part of table;

class TableInMemory extends TableRepository {
  static final List<Table> _tables = <Table>[
    Table(Uuid(), 'A1', 10, 10),
  ];

  @override
  Future<void> addTable(Table table) async {
    _tables.add(table);
  }

  @override
  Future<List<Table>> getTables() async {
    return _tables;
  }
}
