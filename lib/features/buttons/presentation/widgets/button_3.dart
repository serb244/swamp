import 'package:flutter/material.dart';

class Button3 extends StatelessWidget {
  const Button3({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: const Text('Button'),
    );
  }
}
