import 'package:flutter/material.dart';

import '../widgets/button_1.dart';
import '../widgets/button_2.dart';
import '../widgets/button_3.dart';
import '../widgets/button_4.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Buttons Screen")),
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            children: [
              buildRow("Button 1 InkWell + ClipOval", const Button1()),
              const SizedBox(height: 20),
              buildRow("Button 2 ElevatedButton + StadiumBorder", const Button2()),
              const SizedBox(height: 20),
              buildRow("Button 3 ElevatedButton + BeveledRectangleBorder", const Button3()),
              const SizedBox(height: 20),
              buildRow("Button 4  ElevatedButton.icon", const Button4()),
            ],
          ),
        )));
  }

  Row buildRow(String name, Widget widget) {
    return Row(
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: Text(name),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: widget,
          ),
        ),
      ],
    );
  }
}
