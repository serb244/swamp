import 'package:flutter/material.dart';

class Button2 extends StatelessWidget {
  const Button2({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Button'),
      style: ElevatedButton.styleFrom(shape: StadiumBorder()),
    );
  }
}
