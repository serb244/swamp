import 'package:flutter/material.dart';

class MenuItem {
  final String name;
  final String routeName;
  final Color color;

  MenuItem({required this.name, required this.routeName, this.color = Colors.blue});
}