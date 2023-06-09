import 'package:flutter/material.dart';

abstract class ThemeButton {
  static const ButtonStyle redButton =
      ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red));

  static const ButtonStyle blackButton =
      ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black));
}

class CircleTapButton extends StatelessWidget {
  const CircleTapButton({
    Key? key,
    required this.func,
    this.icon,
    this.backgroundColor = const Color.fromRGBO(237, 190, 190, 1.0),
  }) : super(key: key);

  final Function func;
  final Color backgroundColor;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        func();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: const CircleBorder(),
      ),
      child: icon,
    );
  }
}
