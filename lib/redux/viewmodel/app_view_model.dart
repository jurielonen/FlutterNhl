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
  final SnackBarNotification showSnackBar;
  final VoidCallback onSnackBarShowed;

  AppViewModel(
      {@required this.loadingStatus,
      @required this.errorMsg,
      @required this.currentPage,
      @required this.pageChanged,
      @required this.showSnackBar,
      @required this.onSnackBarShowed});

  static AppViewModel fromStore(Store<AppState> store) {
    return AppViewModel(
      loadingStatus: store.state.loadingStatus,
      errorMsg: store.state.errorMsg,
      currentPage: store.state.currentPage,
      pageChanged: (DrawerPages page) =>
          store.dispatch(PageChangedAction(page)),
      showSnackBar: store.state.showSnackBar,
      onSnackBarShowed: () => store.dispatch(CloseSnackBar()),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppViewModel &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          errorMsg == other.errorMsg &&
          currentPage == other.currentPage;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      errorMsg.hashCode ^
      currentPage.hashCode ^
      pageChanged.hashCode ^
      showSnackBar.hashCode ^
      onSnackBarShowed.hashCode;
}
