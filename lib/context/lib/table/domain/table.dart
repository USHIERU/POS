part of table;

class Table {
  final Uuid _id;
  final String tableName;
  final double posX;
  final double posY;

  Table(this._id, this.tableName, this.posX, this.posY);

  String get id => _id.v4();
}