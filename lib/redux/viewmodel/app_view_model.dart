import 'package:FlutterNhl/constants/route.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:flutter/cupertino.dart';
import 'package:redux/redux.dart';

class AppViewModel {
  final LoadingStatus loadingStatus;
  final String errorMsg;
  final DrawerPages currentPage;
  final Function(DrawerPages) pageChanged;

  AppViewModel(
      {@required this.loadingStatus,
      @required this.errorMsg,
      @required this.currentPage,
      @required this.pageChanged});

  static AppViewModel fromStore(Store<AppState> store) {
    return AppViewModel(
      loadingStatus: store.state.loadingStatus,
      errorMsg: store.state.errorMsg,
      currentPage: store.state.currentPage,
      pageChanged: (DrawerPages page) =>
          store.dispatch(PageChangedAction(page)),
    );
  }
}
