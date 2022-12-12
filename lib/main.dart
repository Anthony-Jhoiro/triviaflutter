import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:json_theme/src/codec/theme_decoder.dart';
import 'package:triviaflutter/services/auth/auth.dart';
import 'package:triviaflutter/ui/theme.dart';

import 'firebase_options.dart';
import 'main_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  AuthService().init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeDecoder.decodeThemeData(theme),
      routeInformationProvider: mainRouter.routeInformationProvider,
      routeInformationParser: mainRouter.routeInformationParser,
      routerDelegate: mainRouter.routerDelegate,
      backButtonDispatcher: mainRouter.backButtonDispatcher,
    );
  }
}
