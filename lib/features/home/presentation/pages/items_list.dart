import 'package:flutter/material.dart';

import '../../../../core/router/router_consts.dart';

class Items {
  final String name;
  final String routeName;
  final Color color;

  Items({required this.name, required this.routeName, this.color = Colors.blue});
}

List<Items> itemsList = [
  Items(
    name: "Buttons",
    routeName: RouterConsts.buttonsName,
  ),
  Items(
    name: "Buttons",
    routeName: RouterConsts.buttonsName,
  ),
];
