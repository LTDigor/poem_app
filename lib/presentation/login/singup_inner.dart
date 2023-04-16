import 'package:flutter/material.dart';

import '../lang.dart';
import '../styles/buttons.dart';
import '../styles/texts.dart';
import 'pass_form.dart';

class SignUpInner extends StatelessWidget {
  const SignUpInner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          Lang.of(context).signUp,
          style: ThemeText.bold,
        ),
        const SizedBox(height: 35),
        TextFormField(
          decoration: InputDecoration(
            labelText: Lang.of(context).email,
          ),
        ),
        const SizedBox(height: 20),
        PassForm(),
        const SizedBox(height: 30),
        SizedBox(
          height: 36,
          child: TextButton(
            onPressed: () {},
            style: ThemeButton.redButton,
            child: Text(Lang.of(context).signUp, style: ThemeText.smallBold),
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
                    child: Text(Lang.of(context).signUpWithGoogle,
                        style: ThemeText.smallBold.copyWith(
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
