import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/states/search/search_actions.dart';
import 'package:FlutterNhl/redux/states/search/search_state.dart';

SearchState searchReducer(SearchState state, dynamic action){
  if(action is SearchRequestingAction){
    return state.copyWith(loadingStatus: LoadingStatus.LOADING, searchQuery: action.query);
  } else if(action is SearchDownloadedAction){
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS, searchResult: action.search);
  } else if(action is SearchFilterAction){
    return state.copyWith(loadingStatus: LoadingStatus.SUCCESS, searchQuery: action.query);
  } else if(action is SearchErrorAction){
    return state.copyWith(loadingStatus: LoadingStatus.ERROR, errorMsg: action.errorMsg);
  }
  return state;
}