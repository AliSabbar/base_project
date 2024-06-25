import 'package:flutter/material.dart';

extension SpacingExtension on num {
  Widget get hGap => SizedBox(height: double.tryParse(toString()));
  Widget get wGap => SizedBox(width: double.tryParse(toString()));
}

extension ContextExtension on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  TextTheme get text => Theme.of(this).textTheme;
}
