import 'package:flutter/material.dart';

class PreloaderScreen extends StatelessWidget {
  const PreloaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(
            flex: 6,
          ),
          CircularProgressIndicator(),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
