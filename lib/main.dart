import 'package:flutter/material.dart';
import 'package:them_test/pages/home_page.dart';
import 'package:them_test/theme/my_theme.dart';

void main() {
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

