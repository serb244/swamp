import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/models/menu_item.dart';

class GridMenu extends StatelessWidget {
  final List<MenuItem> menuList;
  const GridMenu({ required this.menuList, super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: menuList.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => context.goNamed(menuList[index].routeName),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(),
              color: menuList[index].color,
            ),
            alignment: Alignment.center,
            child: Text(menuList[index].name),
          ),
        );
      },
    );
  }
}
