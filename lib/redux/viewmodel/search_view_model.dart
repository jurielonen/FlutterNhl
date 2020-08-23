import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/search/search.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/search/search_actions.dart';
import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

class SearchViewModel {
  final LoadingStatus loadingStatus;
  final Exception error;
  final String searchQuery;
  final Search search;
  final Function(String, bool) searchInitialized;

  SearchViewModel(
      {@required this.loadingStatus,
      @required this.error,
      @required this.searchQuery,
      @required this.search,
      @required this.searchInitialized});

  static SearchViewModel fromStore(Store<AppState> store) {
    return SearchViewModel(
      loadingStatus: store.state.searchState.loadingStatus,
      error: store.state.searchState.error,
      searchQuery: store.state.searchState.searchQuery,
      search: store.state.searchState.searchResult,
      searchInitialized: (String query, bool active) =>
          store.dispatch(SearchRequestingAction(query, active)),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is SearchViewModel &&
              runtimeType == other.runtimeType &&
              loadingStatus == other.loadingStatus &&
              error == other.error &&
              searchQuery == other.searchQuery &&
              search == other.search;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      error.hashCode ^
      searchQuery.hashCode ^
      search.hashCode;
}
