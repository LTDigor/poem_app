import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poem_app/domain/authentication.dart';
import 'package:poem_app/domain/edit/appearance/appearance_manager.dart';
import 'package:poem_app/domain/edit/appearance/appearance_notifier.dart';
import 'package:poem_app/domain/edit/appearance/appearance_state.dart';
import 'package:poem_app/domain/login/login_manager.dart';
import 'package:poem_app/domain/navigation/navigation.dart';

import 'domain/login/login_sign_up_notifier.dart';
import 'domain/login/login_sign_up_state.dart';

final navigation = Provider((ref) => Navigation());
final loginSignUpProvider =
    StateNotifierProvider<LoginSignUpNotifier, LoginSignUpState>(
        (ref) => LoginSignUpNotifier());
final loginManagerProvider =
    Provider((ref) => LoginManager(ref.watch(loginSignUpProvider.notifier)));

final authProvider = Provider((ref) => Authentication());

final appearProvider = StateNotifierProvider<AppearNotifier, AppearState>(
    (ref) => AppearNotifier());
final appearManagerProvider =
    Provider((ref) => AppearManager(ref.watch(appearProvider.notifier)));
