import 'package:base_project/core/utils/app_constance.dart';
import 'package:base_project/core/utils/app_extension.dart';
import 'package:base_project/core/utils/language_provider.dart';
import 'package:base_project/core/utils/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(context.tr.home),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Consumer(
              builder: (context, ref, child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              ref
                                  .watch(langProvider.notifier)
                                  .changeLanguage(AppConstance.arLang);
                            },
                            child: const Text(AppConstance.arLang))),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              ref
                                  .watch(langProvider.notifier)
                                  .changeLanguage(AppConstance.enLang);
                            },
                            child: const Text(AppConstance.enLang))),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              ref
                                  .watch(themeProvider.notifier)
                                  .changeTheme(ThemeMode.dark);
                            },
                            child: const Text("dark"))),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              ref
                                  .watch(themeProvider.notifier)
                                  .changeTheme(ThemeMode.light);
                            },
                            child: const Text('light'))),
                  ],
                );
              },
            ),
            100.hGap,
            Container(
              width: context.width,
              height: context.height * .12,
              color: Colors.blueGrey,
              child: Center(
                child: Text(
                  context.tr.home,
                  style: context.text.displayLarge,
                ),
              ),
            ),
            30.hGap,
            TextFormField(),
          ],
        ));
  }
}
