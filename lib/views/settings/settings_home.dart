import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/helpers.dart';
import 'package:FlutterNhl/redux/models/settings/settings.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/viewmodel/settings_view_model.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SettingsViewModel>(
        distinct: true,
        converter: (store) => SettingsViewModel.fromStore(store),
        builder: (ctx, viewModel) {
          if (viewModel.loadingStatus == LoadingStatus.LOADING ||
              viewModel.loadingStatus == LoadingStatus.IDLE) {
            return ProgressView('Loading settings');
          } else if (viewModel.loadingStatus == LoadingStatus.ERROR) {
            return ErrorView(viewModel.error);
          } else {
            return SettingsBody(
              settings: viewModel.settings,
              setNewSettings: (settings) => viewModel.updateSettings(settings),
            );
          }
        });
  }
}

class SettingsBody extends StatefulWidget {
  final NhlSettings settings;
  final Function(NhlSettings) setNewSettings;

  const SettingsBody({Key key, @required this.settings, @required this.setNewSettings})
      : super(key: key);
  @override
  _SettingsBodyState createState() => _SettingsBodyState();
}

class _SettingsBodyState extends State<SettingsBody> {
  NhlSettings _setSettings;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckboxListTile(
          title: const Text('Hide scores'),
          subtitle: const Text('Hide the scores of yesterday\'s games'),
          value: _setSettings.gameResult,
          onChanged: (bool value) {
            setState(() {
              _setSettings = _setSettings.copyWith(gameResult: value);
            });
          },
        ),
        ListTile(
          title: const Text('Show yesterday\'s game'),
          subtitle: const Text('When to change date to current'),
          trailing: DropdownButton<int>(
              items: <int>[
                0,
                1,
                2,
                3,
                4,
                5,
                6,
                7,
                8,
                9,
                10,
                11,
                12,
                13,
                14,
                15,
                16,
                17,
                18,
                19,
                20,
                21,
                22,
                23
              ]
                  .map((e) => DropdownMenuItem(
                        child: Text('${twoDigits(e)}:00'),
                        value: e,
                      ))
                  .toList(),
              value: _setSettings.yesterdayGame,
              icon: Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.white),
              underline: Container(
                height: 2,
                color: Colors.white,
              ),
              onChanged: (int newValue) {
                setState(() {
                  _setSettings = _setSettings.copyWith(yesterdayGame: newValue);
                });
              }),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints.expand(height: 50),
              child: RaisedButton(
                onPressed: _setSettings == widget.settings
                    ? null
                    : () => widget.setNewSettings(_setSettings),
                color: Colors.green,
                disabledColor: Colors.grey,
                child: Text('Update settings'),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    _setSettings = widget.settings.copyWith();
  }
}
