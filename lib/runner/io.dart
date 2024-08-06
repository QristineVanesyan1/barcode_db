import 'package:barcode_db/app/app.dart';
import 'package:barcode_db/configs/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void runner() async {
  WidgetsFlutterBinding.ensureInitialized();
  _screenSetup();
  setup();
  await locator.allReady();
  runApp(const App());
}

void _screenSetup() {
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
  );
}
