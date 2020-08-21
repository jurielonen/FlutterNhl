import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/search/search.dart';
import 'package:flutter/foundation.dart';

class SearchState {
  final LoadingStatus loadingStatus;
  final Search searchResult;
  final String searchQuery;
  final String errorMsg;

  SearchState(
      {@required this.loadingStatus,
      @required this.searchResult,
      @required this.searchQuery,
      @required this.errorMsg});

  factory SearchState.initial() {
    return SearchState(
        loadingStatus: LoadingStatus.IDLE,
        searchResult: null,
        searchQuery: '',
        errorMsg: '');
  }

  SearchState copyWith(
      {LoadingStatus loadingStatus,
      Search searchResult,
      String searchQuery,
      String errorMsg}) {
    return SearchState(
        loadingStatus: loadingStatus ?? this.loadingStatus,
        searchResult: searchResult ?? this.searchResult,
        searchQuery: searchQuery ?? this.searchQuery,
        errorMsg: errorMsg ?? this.errorMsg);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchState &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          searchResult == other.searchResult &&
          searchQuery == other.searchQuery &&
          errorMsg == other.errorMsg;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      searchResult.hashCode ^
      searchQuery.hashCode ^
      errorMsg.hashCode;
}
