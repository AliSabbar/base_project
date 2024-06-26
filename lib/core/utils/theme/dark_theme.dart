import 'package:flutter/material.dart';

class DarkTheme {
  static ThemeData init(BuildContext context) => ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: const ColorScheme.dark(
          primary: Colors.blue,
          secondary: Colors.green,
        ),
      );
}
