import 'dart:ui';

import 'package:poem_app/domain/edit/appearance/appearance_notifier.dart';

class AppearManager {
  final AppearNotifier appearNotifier;

  const AppearManager(this.appearNotifier);

  void changeAlign(TextAlign newAlign) {
    appearNotifier.changeAppearAlign(newAlign);
  }

  void changeAlignStart() {
    appearNotifier.changeAppearAlignToStart();
  }

  void changeAlignEnd() {
    appearNotifier.changeAppearAlignToEnd();
  }

  void changeAlignCenter() {
    appearNotifier.changeAppearAlignToCenter();
  }
}
