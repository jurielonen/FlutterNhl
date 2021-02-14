import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/settings/settings.dart';
import 'package:flutter/foundation.dart';

@immutable
class SettingsState {
  final LoadingStatus loadingStatus;
  final Exception error;
  final NhlSettings settings;

  SettingsState({@required this.loadingStatus, @required this.settings, @required this.error});

  factory SettingsState.initial() {
    return SettingsState(loadingStatus: LoadingStatus.IDLE, settings: null, error: null);
  }

  SettingsState copyWith({LoadingStatus loadingStatus, NhlSettings settings, Exception error}) {
    return SettingsState(
        loadingStatus: loadingStatus ?? this.loadingStatus,
        settings: settings ?? this.settings,
        error: error ?? this.error);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SettingsState &&
          loadingStatus == other.loadingStatus &&
          settings == other.settings &&
          error == other.error;

  @override
  int get hashCode => loadingStatus.hashCode ^ settings.hashCode ^ error.hashCode;
}
