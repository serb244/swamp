import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorScreen extends StatelessWidget {
  final String error;
  const ErrorScreen({required this.error, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Error Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(error),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.go("/"),
              child: const Text("Go to home page"),
            ),
          ],
        ),
      ),
    );
  }
}
