import 'package:flutter/material.dart';
import 'package:swamp/core/presentation/pages/grid_menu.dart';

import 'effects_menu_list.dart';

class EffectsScreen extends StatelessWidget {
  const EffectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EffectsScreen"),
      ),
      body: GridMenu(menuList: effectsMenuList),
    );
  }
}
