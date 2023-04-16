import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poem_app/di.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateLoginSignUp = ref.watch(loginSignUpProvider);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/backgrounds/desert.jpg'),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: SizedBox(
                width: 400,
                height: 500,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white70,
                  ),
                  child: Center(
                    child: SizedBox(
                      width: 300,
                      child: FirebaseUIActions(
                        actions: [
                          AuthStateChangeAction<SignedIn>((context, state) {
                            if (!state.user!.emailVerified) {
                              Navigator.pushNamed(context, '/verify-email');
                            } else {
                              Navigator.pushReplacementNamed(
                                  context, '/profile');
                            }
                          }),
                        ],
                        child: LoginView(
                          action: AuthAction.signIn,
                          providers: FirebaseUIAuth.providersFor(
                            FirebaseAuth.instance.app,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
