import 'package:FlutterNhl/redux/models/draft/draft.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';

class DraftRequestingAction extends DraftAction {}

class DraftChangedAction extends DraftAction {
  final int year;

  DraftChangedAction(this.year);
}

class DraftAlreadyDownloadedAction extends DraftAction {}

class DraftDownloadedAction extends DraftAction {
  final Draft draft;

  DraftDownloadedAction(this.draft);
}

class DraftErrorAction extends DraftAction {
  final String error;

  DraftErrorAction(this.error);
}
