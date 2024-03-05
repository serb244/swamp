import 'package:flutter/material.dart';
import 'package:swamp/core/presentation/pages/grid_menu.dart';

import 'home_menu_list.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> actionsWidgets = [IconButton(onPressed: () {
      throw Exception('Error');
    }, icon: const Icon(Icons.abc))];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        actions: actionsWidgets,
      ),
      body: GridMenu(menuList: homeMenuList),
    );
  }
}