import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'local_dining': Icons.local_dining,
};

Icon getIcono(String nombreIcono) {
  return Icon(_icons[nombreIcono], color: Colors.red);
}
