import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poem_app/domain/navigation/named_routes.dart';
import 'package:poem_app/presentation/styles/texts.dart';

import '/di.dart';
import '../lang.dart';

class EditPage extends ConsumerWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    logger.i("Edit page build");
    final manager = ref.watch(appearManagerProvider);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                BackButton(),
                Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      Lang.of(context).save,
                      style: ThemeText.smallBold.copyWith(color: Colors.red),
                    )),
              ],
            ),
            TextField(
              decoration: InputDecoration(
                hintText: firstCapitalized(Lang.of(context).title),
                border: InputBorder.none,
              ),
              style: ThemeText.defaultPoemTitle,
              textCapitalization: TextCapitalization.words,
            ),
            Expanded(child: PoemText()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AlignButton(
                  alignFunc: manager.changeAlignStart,
                  icon: Text('s', style: ThemeText.smallBold),
                ),
                AlignButton(
                  alignFunc: manager.changeAlignCenter,
                  icon: Text('c', style: ThemeText.smallBold),
                ),
                AlignButton(
                  alignFunc: manager.changeAlignEnd,
                  icon: Text('e', style: ThemeText.smallBold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PoemText extends ConsumerWidget {
  const PoemText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final alignState = ref.watch(appearProvider);
    logger.i("Main edit field for poem build");

    return SingleChildScrollView(
      child: TextField(
        decoration: InputDecoration(
          hintText: firstCapitalized(Lang.of(context).textOfPoem),
          border: InputBorder.none,
        ),
        minLines: 100,
        style: ThemeText.defaultPoem,
        maxLines: null,
        textCapitalization: TextCapitalization.sentences,
        inputFormatters: [
          //UpperCaseTextFormatter(),
        ],
        cursorColor: Colors.red,
        textAlign: alignState.align,
        autofocus: true,
        keyboardType: TextInputType.multiline,
      ),
    );
  }
}

// in future, this formatter should capitalize those and only
// those letters which user has not made capitalized on purpose
class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    logger.i('UpperCaseFormatter');
    LineSplitter ls = const LineSplitter();
    var lines = ls.convert(newValue.text);
    for (int i = 0; i < lines.length; ++i) {
      lines[i] = firstCapitalized(lines[i]);
    }
    var newText = lines.join('\n');
    if (newValue.text.isNotEmpty &&
        newValue.text[newValue.text.length - 1] == '\n') {
      newText += '\n';
    }
    return TextEditingValue(
      text: newText,
      selection: newValue.selection,
    );
  }
}

String firstCapitalized(String value) {
  if (value.isEmpty) return value;
  return "${value[0].toUpperCase()}${value.substring(1)}";
}

class FourStringsEnter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text,
      selection: newValue.selection,
    );
  }
}

class AlignButton extends StatelessWidget {
  const AlignButton({Key? key, required this.alignFunc, required this.icon})
      : super(key: key);
  final alignFunc;
  final icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red[50],
          shape: CircleBorder(),
          side: BorderSide(color: Colors.red, width: 2),
        ),
        onPressed: () {
          alignFunc();
        },
        child: Center(child: icon));
  }
}
