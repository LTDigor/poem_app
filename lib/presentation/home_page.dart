import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poems_app/di/di.dart';
import 'package:poems_app/lang.dart';


class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Lang.of(context).appTitle),
      ),
      body: ListView(
        children: [
          Text('el1'),
          Text('el2'),
          Text('el3'),
          ElevatedButton(
              onPressed: () {
                ref.watch(navigation).pushLogin();
              },
              child: Text('Login')),
        ],
      ),
    );
  }
}
