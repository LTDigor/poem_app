import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poem_app/domain/authorization/auth_state.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(AuthState());

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
    state = state.copyWith(user: null);
  }

  void signIn(User user) {
    state = state.copyWith(user: user);
  }
}
