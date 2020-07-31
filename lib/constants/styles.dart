import 'package:FlutterNhl/redux/models/player/player.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
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

  static Widget buildPlayerCircleIcon(Player player){
    if(player != null && player.id != -1){
      return CircleAvatar(backgroundImage: NetworkImage(player.headShotUrl), backgroundColor: Colors.black, );
    } else {
      return CircleAvatar(backgroundImage: AssetImage('assets/noimage.png'), backgroundColor: Colors.black,);
    }
  }

  static Widget buildPlayerBoxIcon(Player player){
    if(player != null && player.id != -1){
      return
        Image.network(
          player.headShotUrl,
          fit: BoxFit.cover,
        );
    } else {
      return
        Image.asset(
          'assets/noimage.png',
          fit: BoxFit.cover,
        );
    }
  }

  static Widget buildTeamBoxIcon(Team team){
    if(team != null && team.id != -1){
      return
        Image.asset(
          team.logoUrl,
          fit: BoxFit.cover,
        );
    } else {
      return
        Image.asset(
          'assets/noimage.png',
          fit: BoxFit.cover,
        );
    }
  }

  static Widget buildNetworkImage(String url){
    if(url != null && url != ''){
      return Image.network(url, fit: BoxFit.cover,);
    } else {
      return
        Image.asset(
          'assets/noimage.png',
          fit: BoxFit.cover,
        );
    }
  }

  static Widget buildTeamSvgImage(Team team){
    return SvgPicture.network(
      team.logoSvg,
      width: 30,
      height: 30,
      placeholderBuilder: (_) => Container(
        child: SizedBox(
          width: 30,
          height: 30,
        ),
      ),
    );
  }
}