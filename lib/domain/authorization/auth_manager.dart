import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

import 'auth_notifier.dart';

class AuthManager {
  final AuthNotifier authNotifier;
  StreamSubscription<User?>? subscription;

  AuthManager(this.authNotifier);

  void init() {
    subscription ??=
        FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        authNotifier.signOut();
      } else {
        authNotifier.signIn(user);
      }
    });
  }

  void dispose() {
    subscription?.cancel();
    subscription = null;
  }
}
