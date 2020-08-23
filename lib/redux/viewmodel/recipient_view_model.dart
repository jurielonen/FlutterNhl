import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/award/award.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/award/award_selectors.dart';
import 'package:redux/redux.dart';

class RecipientViewModel {
  final LoadingStatus loadingStatus;
  final AwardTableSource award;
  final Exception error;

  RecipientViewModel({this.loadingStatus, this.award, this.error});

  static RecipientViewModel fromStore(Store<AppState> store){
    return RecipientViewModel(
      loadingStatus: store.state.awardState.loadingStatus,
      award: selectedAwardSelector(store.state),
      error: store.state.awardState.error,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is RecipientViewModel &&
              runtimeType == other.runtimeType &&
              loadingStatus == other.loadingStatus &&
              error == other.error &&
              award == other.award;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      error.hashCode ^
      award.hashCode;
}