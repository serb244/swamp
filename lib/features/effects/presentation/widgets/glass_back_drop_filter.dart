import 'dart:ui';

import 'package:flutter/material.dart';

class GlassBackDropFilter extends StatelessWidget {
  const GlassBackDropFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: Alignment.center,
        children: [
          Image.network(
            'https://storage.googleapis.com/cms-storage-bucket/75c5b74c32dfd7b7e8f3.jpg',
            fit: BoxFit.fill,
            width: double.infinity,
           height: 150,
          ),
          // Glass Effect Container
          Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1), // Color of the glass effect
              borderRadius: BorderRadius.circular(15),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), // Adjust the blur intensity as needed
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.redAccent.withOpacity(0.8), // Adjust the opacity of the glass effect
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    'Glass Effect',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
    );
  }
}
