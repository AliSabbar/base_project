import 'package:base_project/core/utils/app_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appValidationProvider =
    Provider.family<AppValidation, BuildContext>((ref, context) {
  return AppValidation(context);
});

class AppValidation {
  const AppValidation(this.ctx);
  final BuildContext ctx;

  String? validateEmail(String value) {
    fieldRequired(value);
    final regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!regex.hasMatch(value)) {
      return ctx.tr.inValidEmail;
    }
    return null;
  }

  String? validatePassword(String value) {
    fieldRequired(value);
    if (value.length < 6) {
      return ctx.tr.passwordMustBeAtLeast6Characters;
    }
    return null;
  }

  String? validateName(String value) {
    fieldRequired(value);
    if (value.length < 3) {
      return ctx.tr.nameMustBeAtLeast3Characters;
    }
    return null;
  }

  String? validatePhone(String value) {
    fieldRequired(value);
    final regex = RegExp(r'^07[0-9]{9}$');
    if (!regex.hasMatch(value)) {
      return ctx.tr.inValidPhoneNumber;
    }
    return null;
  }

  String? fieldRequired(String value) {
    if (value.isEmpty) {
      return ctx.tr.fieldRequired;
    }
    return null;
  }
}
