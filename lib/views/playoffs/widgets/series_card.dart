import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/playoffs/playoffs.dart';
import 'package:FlutterNhl/views/playoffs/widgets/series_popup.dart';
import 'package:FlutterNhl/widgets/content_card.dart';
import 'package:flutter/material.dart';

class SeriesCard extends StatelessWidget {
  final Series series;
  const SeriesCard({Key key, this.series}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PressableCard(
      child: _buildChild(),
      onPressed: () => _showDialog(context),
    );
  }

  Widget _buildChild() {
    if (series == null || series.teams == null || series.teams.length < 1) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Text('Match up not decided yet')),
      );
    } else {
      return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: teamRows.toList());
    }
  }

  Iterable<Widget> get teamRows sync* {
    int wTeamId = series.hasATeamWon;

    for (SeriesTeam team in series.teams) {
      if (wTeamId == null) {
        yield buildTeamRow(team, false);
      } else {
        yield buildTeamRow(team, team.id != wTeamId);
      }
    }
    //yield Expanded(child: Divider());

    yield Text(
      series.seriesCurrentGame.seriesStatus,
      style: Styles.scaffoldGameWinnerText.copyWith(fontSize: 12),
    );
  }

  Widget buildTeamRow(SeriesTeam team, bool lost) {
    double opacity = 1.0;
    if (lost) opacity = 0.5;

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Opacity(
        opacity: opacity,
        child: Row(
          children: [
            Styles.buildTeamSvgImage(team, size: 25),
            Text.rich(TextSpan(
                text: team.rank.toString(),
                style: Styles.cardTeamWinnerMinorText,
                children: [
                  TextSpan(
                      text: ' ${team.abb}',
                      style: Styles.scaffoldGameWinnerText)
                ])),
            Expanded(
              child: Text(team.wins.toString(),
                  textAlign: TextAlign.end,
                  style: Styles.scaffoldGameWinnerText),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _showDialog(BuildContext context) async {
    await showDialog(
        context: context,
        builder: (BuildContext context) => SeriesPopup(
              series: series,
            ));
  }
}
