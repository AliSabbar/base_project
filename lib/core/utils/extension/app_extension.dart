import 'package:flutter/material.dart';

extension SpacingExtension on double {
  Widget get hGap => SizedBox(height: this);
  Widget get wGap => SizedBox(width: this);
}

extension ContextExtension on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  TextTheme get text => Theme.of(this).textTheme;
}
