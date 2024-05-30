import 'package:flutter/material.dart';

  final DarkTheme = ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.deepPurple.shade900,
        foregroundColor: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.white70,
      colorScheme: ColorScheme.light()

  );

  final LightTheme = ThemeData(
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.deepPurple.shade300,
        foregroundColor: Colors.black
    ),
    scaffoldBackgroundColor: Colors.black12
    colorScheme: ColorScheme.dark()
  );


