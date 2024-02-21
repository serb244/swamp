import 'package:flutter/material.dart';

class Button4 extends StatelessWidget {
  const Button4({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(Icons.thumb_up),
      label: Text("Like"),
      onPressed: () => print("it's pressed"),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
  }
}
