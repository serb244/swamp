import 'dart:ui';

import 'package:flutter/material.dart';
class GlassBoxShadow extends StatelessWidget {

  const GlassBoxShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://storage.googleapis.com/cms-storage-bucket/75c5b74c32dfd7b7e8f3.jpg'),
          fit: BoxFit.fill,
        ),

        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset(0.0, 10.0),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Text(
            "GlassBoxShadow",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}