import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/award/award.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/award/award_selectors.dart';
import 'package:redux/redux.dart';

class RecipientViewModel {
  final LoadingStatus loadingStatus;
  final Award award;
  final String errorMsg;

  RecipientViewModel({this.loadingStatus, this.award, this.errorMsg});

  static RecipientViewModel fromStore(Store<AppState> store){
    return RecipientViewModel(
      loadingStatus: store.state.awardState.loadingStatus,
      award: selectedAwardSelector(store.state),
      errorMsg: store.state.awardState.errorMsg,
    );
  }
}