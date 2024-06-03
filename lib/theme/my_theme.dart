import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MyTheme{

  static ThemeData darkTheme = ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.orangeAccent
      ),
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(),
      iconTheme: const IconThemeData(color: Colors.orange),
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



