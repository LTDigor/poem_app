import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poems_app/presentation/styles/texts.dart';

import '../presentation/styles/buttons.dart';

class LoginMobile extends StatefulWidget {
  const LoginMobile({Key? key}) : super(key: key);

  @override
  State<LoginMobile> createState() => _LoginMobileState();
}

class _LoginMobileState extends State<LoginMobile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Center(
            child: SizedBox(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Welcome back',
                    style: ThemeText.regularText,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Login to your account',
                    style: ThemeText.boldText,
                  ),
                  const SizedBox(height: 35),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Username',
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(),
                  const SizedBox(height: 30),
                  TextButton(
                      onPressed: () {},
                      style: ThemeButton.redButton,
                      child: Text('Login', style: ThemeText.smallBoldText,)),
                  const SizedBox(height: 15),
                  TextButton(
                      onPressed: () {}, child: Text('Login with Google', style: ThemeText.smallBoldText,)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
