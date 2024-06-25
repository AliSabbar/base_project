import 'package:base_project/core/network/local/shared_pref.dart';
import 'package:base_project/core/network/local/shared_pref_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider =
    NotifierProvider<ThemeProvider, ThemeMode>(() => ThemeProvider());

class ThemeProvider extends Notifier<ThemeMode> {
  @override
  build() {
    final currentTheme =
        SharedPref.getData(SharedPrefKeys.theme) == ThemeMode.light.toString()
            ? ThemeMode.light
            : ThemeMode.dark;
    return currentTheme;
  }

  void changeTheme(ThemeMode themeMode) {
    state = themeMode;
    SharedPref.setData(key: SharedPrefKeys.theme, value: state.toString());
  }
}
