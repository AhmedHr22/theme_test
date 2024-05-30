import 'dart:io';

import 'package:flutter/material.dart';
import 'package:them_test/pages/home_page.dart';
import 'package:them_test/theme/my_theme.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}
void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeData homeTheme = MyTheme.darkTheme;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: homeTheme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

