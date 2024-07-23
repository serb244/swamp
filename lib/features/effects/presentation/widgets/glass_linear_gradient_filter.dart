import 'dart:ui';

import 'package:flutter/material.dart';
class GlassLinearGradient extends StatelessWidget {

  const GlassLinearGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white.withOpacity(0.2),
            Colors.blue.withOpacity(0.2),
          ],
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: const Text(
            "LinearGradient",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

