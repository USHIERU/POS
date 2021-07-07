import 'package:flutter/material.dart';
import 'package:pos/app/configs/pos_config.dart';
import 'package:pos/app/pos.dart';
import 'package:pos/context/shared/infrastructure/factory/in_memory_factory.dart';

void main() async {
  final pos = POSConfig(factory: InMemoryFactory());
  await pos.init();
  runApp(POS());
}
