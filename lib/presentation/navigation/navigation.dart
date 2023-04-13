import 'package:flutter/material.dart';
import 'package:poems_app/presentation/navigation/routes.dart';

class Navigation {
  static final navigationKey = GlobalKey<NavigatorState>();
  void pushLogin() {
    navigationKey.currentState!.pushNamed(Routes.login);
  }
  void pushEdit() {
    navigationKey.currentState!.pushNamed(Routes.edit);
  }
  void pushForgotPass() {
    navigationKey.currentState!.pushNamed(Routes.forgotPass);
  }
  void pushSettings() {
    navigationKey.currentState!.pushNamed(Routes.settings);
  }
  void pushHome() {
    navigationKey.currentState!.pushNamed(Routes.home);
  }
}
