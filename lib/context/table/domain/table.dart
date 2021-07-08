import 'package:uuid/uuid.dart';

class Table {
  final Uuid id;
  final String tableName;
  final double posX;
  final double posY;

  Table(this.id, this.tableName, this.posX, this.posY);
}