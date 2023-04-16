import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poem_app/di.dart';

import '../lang.dart';
import '../styles/buttons.dart';
import '../styles/texts.dart';
import 'pass_form.dart';

class LoginInner extends ConsumerWidget {
  const LoginInner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manager = ref.watch(loginManagerProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          Lang.of(context).welcomeBack,
          style: ThemeText.regular,
        ),
        const SizedBox(height: 8),
        Text(
          Lang.of(context).loginToAcc,
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
        const SizedBox(height: 25),
        Row(
          children: [
            InkWell(
              onTap: manager.onTapForgotPass,
              child: Text(
                Lang.of(context).forgotPassQuestion,
                style: const TextStyle(
                  color: Color.fromRGBO(10, 38, 164, 1.0),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: manager.onTapSignUp,
              child: Text(
                Lang.of(context).signUp,
                style: const TextStyle(
                  color: Color.fromRGBO(10, 38, 164, 1.0),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        SizedBox(
          height: 36,
          child: TextButton(
            onPressed: () {},
            style: ThemeButton.redButton,
            child: Text(Lang.of(context).login, style: ThemeText.smallBold),
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
                    child: Text(Lang.of(context).loginWithGoogle,
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
