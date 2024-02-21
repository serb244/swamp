import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  const Button1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: const Size(56, 56),
      child: ClipOval(
        child: Material(
          color: Colors.amberAccent,
          child: InkWell(
            splashColor: Colors.green,
            onTap: () {},
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.shopping_cart), // <-- Icon
                Text("Buy"), // <-- Text
              ],
            ),
          ),
        ),
      ),
    );
  }
}
