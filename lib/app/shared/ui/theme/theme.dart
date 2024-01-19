import 'package:flutter/material.dart';
import 'package:flutter_template/app/shared/shared.dart';

ThemeData lightTheme() {
  final base = ThemeData.light(useMaterial3: true);
  return base.copyWith(
    colorScheme: lightColorScheme,
    textTheme: base.textTheme.openSans,
  );
}

ThemeData darkTheme() {
  final base = ThemeData.dark(useMaterial3: true);
  return base.copyWith(
    colorScheme: darkColorScheme,
    textTheme: base.textTheme.openSans,
  );
}
