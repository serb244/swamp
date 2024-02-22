import 'dart:async';

import 'package:flutter/material.dart';
import 'package:swamp/core/utils/logging/my_logger.dart';

import 'app.dart';

// void main() {
//   runZonedGuarded(() {
//     WidgetsFlutterBinding.ensureInitialized();
//     runApp(const MyApp());
//   }, (error, stack) {
//     MyLogger().logError(message: 'Errorrr: $error', error: error);
//     MyLogger().logError(message: 'Stack: $stack', error: stack);
//   });
// }
void main() {
  runZonedGuarded(() {
    WidgetsFlutterBinding.ensureInitialized();

    FlutterError.onError = (FlutterErrorDetails details) {
      catchUnhandledExceptions(details.exception, details.stack);
    };

    runApp(const MyApp());

  }, catchUnhandledExceptions);
}

void catchUnhandledExceptions(Object error, StackTrace? stack) {
    MyLogger().log(message: "runZonedGuarded error",error:  error, logLevel: LogLevel.error, stackTrace: stack, writeToFile: true);
}