import 'package:flutter/material.dart';

class MyTheme{

  static ThemeData darkTheme = ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.orangeAccent
      ),
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light()

  );

  static ThemeData lightTheme = ThemeData(
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple.shade300,
          foregroundColor: Colors.black
      ),
      scaffoldBackgroundColor: Colors.black12,
      colorScheme: const ColorScheme.dark()
  );
}



