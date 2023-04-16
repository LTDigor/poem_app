import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:poem_app/domain/navigation/named_routes.dart';

import '/firebase_options.dart';

Future<void> main() async {
  // Slow down time to see lerping.
  timeDilation = 0.5;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseUIAuth.configureProviders([
    EmailAuthProvider(),
    GoogleProvider(
        clientId:
            '620834351085-5sg0k2tiekvuem9lf6v8vg9rq512o66s.apps.googleusercontent.com'),
  ]);

  runApp(const NamedRoutesWithParams());
}
