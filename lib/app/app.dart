import 'package:barcode_db/screens/router_screen/router_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaler: const TextScaler.linear(1.0)),
          child: child!,
        );
      },
      // theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
      home: const RouterScreen(),
    );
  }
}
