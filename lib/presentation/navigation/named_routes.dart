import 'dart:io';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poems_app/presentation/lang.dart';
import 'package:poems_app/presentation/logger.dart';
import 'package:poems_app/presentation/navigation/navigation.dart';
import 'package:poems_app/presentation/navigation/routes.dart';
import 'package:poems_app/presentation/settings.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


var logger = CustomLogger.initLogger();

class NamedRoutesWithParams extends StatelessWidget {
  const NamedRoutesWithParams({super.key});

  @override
  Widget build(BuildContext context) {
    logger.i("building namedRoutes widget");

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
