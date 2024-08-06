import 'package:barcode_db/app/app.dart';
import 'package:barcode_db/configs/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;

void runner() async {
  // runZonedGuarded<void>(() async {
  WidgetsFlutterBinding.ensureInitialized();
  _screenSetup();
  setup();
  await locator.allReady();

  //FlutterError.onError is specific to the Flutter framework and is used to handle errors during the build, layout, and painting phases.
  FlutterError.onError = (FlutterErrorDetails details) async {
    FlutterError.presentError(details);
  };
  Bloc.transformer = bloc_concurrency.sequential();
  // Bloc.observer = AppBlocObserver.instance();
  runApp(const App());
  // }, (zoneValues, zoneSpecification) {
  //   //TODO: ADD logger
  // });
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
