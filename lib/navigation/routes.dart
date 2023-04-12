import 'package:flutter/material.dart';
import 'package:poems_app/login/forgotPass.dart';
import 'package:poems_app/login/login.dart';
import 'package:poems_app/presentation/home_page.dart';
import 'package:poems_app/presentation/settings.dart';

import '../presentation/edit.dart';

class Routes {
  static const home = '/';
  static const settings = '/settings';
  static const login = '/login';
  static const forgotPass = '/forgotPass';
  static const edit = '/edit';

  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    final Widget widget;
    switch (routeSettings.name) {
      case edit:
        widget = const EditPage();
        break;
      case home:
        widget = const HomePage();
        break;
      case settings:
        widget = const Settings();
        break;
      case login:
        widget = const LoginPage();
        break;
      case forgotPass:
        widget = const ForgotPassPage();
        break;
      default:
        widget = const HomePage();
        break;
    }
    return MaterialPageRoute(
      builder: (context) => widget
    );
  }
}
