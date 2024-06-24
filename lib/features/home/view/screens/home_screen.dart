import 'package:base_project/core/utils/app_constance.dart';
import 'package:base_project/core/utils/extension/app_extension.dart';
import 'package:base_project/core/utils/language_provider.dart';
import 'package:base_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).home),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Consumer(
              builder: (context, ref, child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          ref.watch(langProvider.notifier).changeLanguage("ar");
                        },
                        child: const Text(AppConstance.arLang)),
                    40.0.wGap,
                    ElevatedButton(
                        onPressed: () {
                          ref.watch(langProvider.notifier).changeLanguage("en");
                        },
                        child: const Text(AppConstance.enLang)),
                  ],
                );
              },
            ),
          ],
        ));
  }
}
