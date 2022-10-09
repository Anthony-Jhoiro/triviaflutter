import 'package:flutter/material.dart';
import 'package:json_theme/src/codec/theme_decoder.dart';
import 'package:triviaflutter/ui/pages/home/home_page.dart';
import 'package:triviaflutter/ui/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeDecoder.decodeThemeData(theme),
      home: const HomePage(),
    );
  }
}
