import 'package:flutter/material.dart';
import 'package:pos/app/pos.dart';
import 'package:pos/context/shared/infrastructure/persistence/hive/hive_connection.dart';

void main() async {
  var hiveConnection = HiveConnection();
  await hiveConnection.connect();
  runApp(POS());
}
