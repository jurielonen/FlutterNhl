import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/search/search.dart';
import 'package:flutter/foundation.dart';

class SearchState {
  final LoadingStatus loadingStatus;
  final Search searchResult;
  final String searchQuery;
  final Exception error;

  SearchState(
      {@required this.loadingStatus,
      @required this.searchResult,
      @required this.searchQuery,
      @required this.error});

  factory SearchState.initial() {
    return SearchState(
        loadingStatus: LoadingStatus.IDLE,
        searchResult: null,
        searchQuery: '',
        error: null);
  }

  SearchState copyWith(
      {LoadingStatus loadingStatus,
      Search searchResult,
      String searchQuery,
      Exception error}) {
    return SearchState(
        loadingStatus: loadingStatus ?? this.loadingStatus,
        searchResult: searchResult ?? this.searchResult,
        searchQuery: searchQuery ?? this.searchQuery,
        error: error ?? this.error);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchState &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          searchResult == other.searchResult &&
          searchQuery == other.searchQuery &&
          error == other.error;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      searchResult.hashCode ^
      searchQuery.hashCode ^
      error.hashCode;
}
