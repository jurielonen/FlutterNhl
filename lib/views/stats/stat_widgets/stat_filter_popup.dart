import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/player/player_enums.dart';
import 'package:FlutterNhl/redux/models/team/team.dart';
import 'package:FlutterNhl/views/navigation/arguments.dart';
import 'package:FlutterNhl/widgets/custom_year_select.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:flutter/material.dart';

class StatFilterPage extends StatefulWidget {
  static const String routeName = '/statFilter';
  final FilterArguments arguments;

  const StatFilterPage({Key key, @required this.arguments}) : super(key: key);

  @override
  _StatFilterPageState createState() => _StatFilterPageState();
}

class _StatFilterPageState extends State<StatFilterPage> {
  List<FilterItem> filters = [
    FilterItem('Season'),
    FilterItem('Team'),
    FilterItem('Player type'),
    FilterItem('Game type'),
  ];
  Position _selectedPosition = Position.N_A;
  int _selectedGameType = 2;
  int _selectedTeam = -1;
  String _selectedStartSeason = StatParameters.getCurrentSeason();
  String _selectedEndSeason = StatParameters.getCurrentSeason();
  bool _seasonConfig = false;
  bool showPosition = true;

  @override
  void initState() {
    super.initState();
    showPosition = widget.arguments.currentParams.paramType.type == StatType.PLAYER;
    if(showPosition) {
      _selectedPosition = widget.arguments.currentParams.position;
    } else {
      filters.removeWhere((item) {
        return item.header == 'Player type';
      });
    }
    _selectedGameType = widget.arguments.currentParams.gameType;
    _selectedTeam = widget.arguments.currentParams.franchiseId;
    String _selectedStartSeason = widget.arguments.currentParams.startSeason;
    String _selectedEndSeason = widget.arguments.currentParams.endSeason;
    _seasonConfig = _selectedStartSeason != _selectedEndSeason;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () => Navigator.pop(context),
                child: Text('CANCEL'),
              ),
            ),
            Expanded(
              child: RaisedButton(
                onPressed: () => applyFilters(),
                color: Colors.green,
                child: Text('APPLY FILTERS'),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          tooltip: 'Set filters',
          onPressed: () => Navigator.pop(
            context,
          ),
        ),
        title: Text('Select filters'),
      ),
      body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  filters[index].isExpanded = !isExpanded;
                });
              },
              children: filters.map<ExpansionPanel>((FilterItem item) {
                return ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return ListTile(
                      title: Text(item.header),
                    );
                  },
                  isExpanded: item.isExpanded,
                  body: new Builder(builder: (BuildContext context) {
                    return _bodyBuilder(context, item.header);
                  }),
                );
              }).toList(),
            ),
          ),
    );
  }

  void applyFilters() {
    StatParameters newParams =
        StatParameters.clone(widget.arguments.currentParams);
    newParams.franchiseId = _selectedTeam;
    newParams.position = _selectedPosition;
    newParams.gameType = _selectedGameType;
    newParams.startSeason = _selectedStartSeason;
    newParams.endSeason =
        _seasonConfig ? _selectedEndSeason : _selectedStartSeason;
    Navigator.pop(context, newParams);
  }

  Widget _bodyBuilder(BuildContext context, String item) {
    switch (item) {
      case 'Season':
        return Column(
          children: _getSeasons(),
        );
      case 'Team':
        return Column(
          children: _getTeamFilter.toList(),
        );
      case 'Player type':
        return Column(children: _getPositionFilter.toList());
      case 'Game type':
        return Column(
          children: _getGameTypeFilter.toList(),
        );
      default:
        return ErrorView(UIUnknownStateException('stat_filter_popup _bodyBuilder'));
    }
  }

  List<Widget> _getSeasons() {
    List<Widget> widgets = [
      SwitchListTile(
        title: const Text('Set start and end season'),
        value: _seasonConfig,
        onChanged: (bool value) {
          setState(() {
            _seasonConfig = value;
          });
        },
        secondary: const Icon(Icons.calendar_today),
      ),
      CustomYearPicker(
        selected: int.parse(_selectedStartSeason),
        onSelected: (int year) {
          setState(() {
            _selectedStartSeason = year.toString();
          });
        },
        maxValue: _seasonConfig
            ? int.parse(_selectedEndSeason)
            : int.parse(StatParameters.getCurrentSeason()),
        minValue: 20002001,
        reducer: 10001,
      )
    ];
    if (_seasonConfig) {
      widgets.add(CustomYearPicker(
        selected: int.parse(_selectedEndSeason),
        onSelected: (int year) {
          setState(() {
            _selectedEndSeason = year.toString();
          });
        },
        maxValue: int.parse(StatParameters.getCurrentSeason()),
        minValue: int.parse(_selectedStartSeason),
        reducer: 10001,
      ));
    }
    return widgets;
  }

  Iterable<Widget> get _getPositionFilter sync* {
    yield ListTile(
      title: Text('All skaters'),
      leading: Radio(
        value: Position.N_A,
        groupValue: _selectedPosition,
        onChanged: (Position value) {
          setState(() {
            _selectedPosition = value;
          });
        },
      ),
    );
    for (Position position in Position.values) {
      if (position != Position.HC &&
          position != Position.N_A &&
          position != Position.G) {
        yield ListTile(
          title: Text(positionToFullString(position)),
          leading: Radio(
            value: position,
            groupValue: _selectedPosition,
            onChanged: (Position value) {
              setState(() {
                _selectedPosition = value;
              });
            },
          ),
        );
      }
    }
  }

  Iterable<Widget> get _getGameTypeFilter sync* {
    yield ListTile(
      title: Text('Regular'),
      leading: Radio(
        value: 2,
        groupValue: _selectedGameType,
        onChanged: (int value) {
          setState(() {
            _selectedGameType = value;
          });
        },
      ),
    );
    yield ListTile(
      title: Text('Playoffs'),
      leading: Radio(
        value: 3,
        groupValue: _selectedGameType,
        onChanged: (int value) {
          setState(() {
            _selectedGameType = value;
          });
        },
      ),
    );
  }

  Iterable<Widget> get _getTeamFilter sync* {
    yield ListTile(
      title: Text('All teams'),
      leading: Radio(
        value: -1,
        groupValue: _selectedTeam,
        onChanged: (int value) {
          setState(() {
            _selectedTeam = value;
          });
        },
      ),
    );
    for (Team team in Team.teams.values) {
      yield ListTile(
        title: Text(team.name),
        leading: Radio(
          value: team.franchiseId,
          groupValue: _selectedTeam,
          onChanged: (int value) {
            setState(() {
              _selectedTeam = value;
            });
          },
        ),
      );
    }
  }
}

class FilterItem {
  final String header;
  bool isExpanded = false;

  FilterItem(this.header);
}