part of table;

class Table {
  final String id;
  final String tableName;
  final double posX;
  final double posY;

  Table(Uuid id, this.tableName, this.posX, this.posY): this.id = id.v4();
}