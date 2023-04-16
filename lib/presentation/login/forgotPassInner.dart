import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poem_app/domain/navigation/named_routes.dart';

import '../lang.dart';
import '../styles/buttons.dart';
import '../styles/texts.dart';

class ForgotPassInner extends ConsumerWidget {
  const ForgotPassInner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    logger.i('forgotPassPage');

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          Lang.of(context).recoverAcc,
          style: ThemeText.bold,
        ),
        const SizedBox(height: 35),
        TextFormField(
          decoration: InputDecoration(
            labelText: Lang.of(context).email,
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          height: 36,
          child: TextButton(
            onPressed: () {},
            style: ThemeButton.redButton,
            child: Text(Lang.of(context).resetPass, style: ThemeText.smallBold),
          ),
        ),
      ],
    );
  }
}
