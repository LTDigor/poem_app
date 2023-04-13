import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poems_app/presentation/styles/texts.dart';

import 'package:poems_app/presentation/styles/buttons.dart';

class LoginMobile extends StatefulWidget {
  const LoginMobile({Key? key}) : super(key: key);

  @override
  State<LoginMobile> createState() => _LoginMobileState();
}

class _LoginMobileState extends State<LoginMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/backgrounds/desert.jpg'),
            fit: BoxFit.cover),
      ),
      child: const Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: SizedBox(
              width: 400,
              height: 500,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white54,
                ),
                child: Center(
                  child: SizedBox(
                    width: 300,
                    child: LoginInner(),
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

class LoginInner extends StatelessWidget {
  const LoginInner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const SizedBox(height: 30),
        SizedBox(
          height: 36,
          child: TextButton(
            onPressed: () {},
            style: ThemeButton.redButton,
            child: Text('Login', style: ThemeText.smallBoldText),
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 36,
          child: TextButton(
              style: ThemeButton.blackButton,
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      flex: 1,
                      child: SizedBox(
                          height: 24,
                          child: Image.asset('assets/images/google.png'))),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    flex: 2,
                    child: Text('Login with Google',
                        style: ThemeText.smallBoldText.copyWith(
                          color: Colors.white,
                        )),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
