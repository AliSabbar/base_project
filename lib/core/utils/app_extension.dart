import 'package:base_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension SpacingExtension on num {
  Widget get hGap => SizedBox(height: toDouble());
  Widget get wGap => SizedBox(width: toDouble());
  EdgeInsets get allPad => EdgeInsets.all(toDouble());
  EdgeInsets get syPad =>
      EdgeInsets.symmetric(horizontal: toDouble(), vertical: toDouble());
  EdgeInsets get horPad => EdgeInsets.symmetric(horizontal: toDouble());
  EdgeInsets get verPad => EdgeInsets.symmetric(vertical: toDouble());
  BorderRadius get radius => BorderRadius.circular(toDouble());
}

extension ContextExtension on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  TextTheme get text => Theme.of(this).textTheme;
  ThemeData get theme => Theme.of(this);
  String get locale => Localizations.localeOf(this).languageCode;
  S get tr => S.of(this);
}
