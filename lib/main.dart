import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:them_test/pages/home_page.dart';
import 'package:them_test/providers/theme_provider.dart';
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
  runApp( MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider(),)
      ],
  child: const MyApp()));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:context.watch<ThemeProvider>().isDark ? MyTheme.darkTheme : MyTheme.lightTheme,
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

