import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'colors.dart';

abstract class Styles {

  static DateFormat apiDateFormat = DateFormat('yyyy-MM-dd');
  static DateFormat dateFormat = DateFormat('dd.MM.yyyy');
  static DateFormat dateWithoutYearFormat = DateFormat('dd.MM');
  static DateFormat timeFormat = DateFormat('HH:mm');
  static DateFormat dateTimeFormat = DateFormat('dd.MM.yyyy HH:mm');

  static const playerTableText = TextStyle(
    color: kPrimaryTextColor,
    fontFamily: 'NotoSans',
    fontSize: 10,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );


  static const playerTableTeamText = TextStyle(
    color: kPrimaryTextColor,
    fontFamily: 'NotoSans',
    fontSize: 8,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.normal,
  );


  static const cardTeamWinnerText = TextStyle(
    color: kPrimaryTextColor,
    fontFamily: 'NotoSans',
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const cardTeamWinnerMinorText = TextStyle(
    color: kPrimaryTextColor,
    fontFamily: 'NotoSans',
    fontSize: 10,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.normal,
  );

  static const cardTeamLoserText = TextStyle(
    color: kSecondaryTextColor,
    fontFamily: 'NotoSans',
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const cardTeamLoserMinorText = TextStyle(
    color: kSecondaryTextColor,
    fontFamily: 'NotoSans',
    fontSize: 10,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.normal,
  );

  static const cardOtherText = TextStyle(
    color: kPrimaryTextColor,
    fontFamily: 'NotoSans',
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const scaffoldText = TextStyle(
    color: kPrimaryTextColor,
    fontFamily: 'NotoSans',
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const scaffoldGameWinnerText = TextStyle(
    color: kPrimaryTextColor,
    fontFamily: 'NotoSans',
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const scaffoldGameLoserText = TextStyle(
    color: kSecondaryTextColor,
    fontFamily: 'NotoSans',
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const scaffoldGameVsText = TextStyle(
    color: kSecondaryTextColor,
    fontFamily: 'NotoSans',
    fontSize: 10,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const gameTabBarText = TextStyle(
    color: kPrimaryTextColor,
    fontFamily: 'NotoSans',
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const gamePeriodText = TextStyle(
    color: kSecondaryTextColor,
    fontFamily: 'NotoSans',
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const gamePeriodScoreText = TextStyle(
    color: kPrimaryTextColor,
    fontFamily: 'NotoSans',
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const loaderText = TextStyle(
    color: kPrimaryTextColor,
    fontFamily: 'NotoSans',
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const errorText = TextStyle(
    color: kPrimaryTextColor,
    fontFamily: 'NotoSans',
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );


  static const playTitleText = TextStyle(
    color: kPrimaryTextColor,
    fontFamily: 'NotoSans',
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );


  static const playSubtitleText = TextStyle(
    color: kPrimaryTextColor,
    fontFamily: 'NotoSans',
    fontSize: 13,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );



}