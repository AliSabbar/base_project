import 'package:flutter/material.dart';

class LightTheme {
  static ThemeData init(BuildContext context) => ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorScheme: const ColorScheme.light(
          primary: Colors.orange,
          secondary: Colors.green,
        ),
      );
}
