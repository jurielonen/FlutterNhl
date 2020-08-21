import 'package:FlutterNhl/redux/models/search/search.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';

class SearchRequestingAction extends SearchAction {
  final String query;
  final bool active;
  SearchRequestingAction(this.query, this.active);
}

class SearchFilterAction extends SearchAction {
  final String query;
  SearchFilterAction(this.query);
}

class SearchDownloadedAction extends SearchAction {
  final Search search;
  SearchDownloadedAction(this.search);
}

class SearchErrorAction extends SearchAction {
  final String errorMsg;
  SearchErrorAction(this.errorMsg);
}