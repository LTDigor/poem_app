import 'dart:io';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:poems_app/navigation/navigation.dart';
import 'package:poems_app/navigation/routes.dart';
import 'package:poems_app/lang.dart';
import '../presentation/home_page.dart';
import 'package:poems_app/login/login.dart';
import 'package:poems_app/presentation/settings.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


var logger = Logger(
  printer: PrettyPrinter(
      methodCount: 2,
      // number of method calls to be displayed
      errorMethodCount: 8,
      // number of method calls if stacktrace is provided
      lineLength: 120,
      // width of the output
      colors: true,
      // Colorful log messages
      printEmojis: true,
      // Print an emoji for each log message
      printTime: false // Should each log print contain a timestamp
  ),
  output: null,
  filter: null, // only log in debug mode, as suggested
);

class NamedRoutesWithParams extends StatelessWidget {
  const NamedRoutesWithParams({super.key});

  @override
  Widget build(BuildContext context) {
    logger.i("starting main");

    FlutterError.onError = (error) {
      FlutterError.presentError(error);
      logger.e(error.toString());
      if (kReleaseMode) {
        exit(1);
      }
    };

    PlatformDispatcher.instance.onError = (error, stack) {
      logger.e(error.toString());
      return true;
    };

    return UncontrolledProviderScope(
      container: ProviderContainer(),
      child: MaterialApp(
        localizationsDelegates: const [
          Lang.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('ru'), // Russian
          Locale('en'), // English
        ],
        initialRoute: Routes.home,
        navigatorKey: Navigation.navigationKey,
        onGenerateRoute: Routes.onGenerateRoute,
      ),
    );
  }
}
