import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
TextFormField MyTextFormField() {
  return TextFormField(
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey.shade100,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade100),
      ),
    ),
  );
}
