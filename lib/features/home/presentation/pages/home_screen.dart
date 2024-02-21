import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'items_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: itemsList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => context.goNamed(itemsList[index].routeName),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
                color: itemsList[index].color,
              ),
              alignment: Alignment.center,
              child: Text(itemsList[index].name),
            ),
          );
        },
      ),
    );
  }
}
