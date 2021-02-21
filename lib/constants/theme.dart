import 'package:flutter/material.dart';
import 'colors.dart';

ThemeData buildNHLTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    primaryColor: kNHLPrimary,
    primaryColorLight: kNHLPrimaryLight,
    primaryColorDark: kNHLPrimaryDark,
    backgroundColor: kNHLPrimaryDark,
    scaffoldBackgroundColor: kNHLPrimaryDark,
    dividerColor: kNHLSecondaryLight,
    focusColor: kNHLSecondary,
    accentColor: kNHLSecondaryLight,
    highlightColor: kNHLSecondaryLight,
    selectedRowColor: kNHLSecondary,
    unselectedWidgetColor: kNHLPrimaryLight,
    disabledColor: kNHLPrimaryLight,
    dialogBackgroundColor: kNHLSecondary,
    indicatorColor: kNHLSecondary,
    toggleableActiveColor: kNHLSecondary,
    cardColor: kNHLPrimaryLight,
  );
}
