import 'package:flutter/material.dart';
import 'colors.dart';

IconThemeData _customIconTheme(IconThemeData original) {
  return original.copyWith(color: kNHL900);
}

ThemeData buildNHLTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    cardColor: kCardColor,
  );
}