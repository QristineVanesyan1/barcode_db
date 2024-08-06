import 'package:flutter/material.dart';

class PreloaderScreen extends StatelessWidget {
  const PreloaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(
            flex: 10,
          ),
          Center(child: CircularProgressIndicator()),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
