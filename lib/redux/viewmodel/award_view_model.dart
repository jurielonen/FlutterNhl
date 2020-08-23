import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/award/award.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/collection.dart';
import 'package:redux/redux.dart';

class AwardViewModel {
  final LoadingStatus loadingStatus;
  final int selectedAward;
  final KtMap<int, AwardTableSource> awards;
  final Exception error;
  /*final Function(Award) awardSelected;
  final Function() awardUnselected;*/

  AwardViewModel({
    @required this.loadingStatus,
    @required this.selectedAward,
    @required this.awards,
    @required this.error,
    //@required this.awardSelected,
    //@required this.awardUnselected,
  });

  static AwardViewModel fromStore(Store<AppState> store) {
    return AwardViewModel(
        loadingStatus: store.state.awardState.loadingStatus,
        selectedAward: store.state.awardState.selectedAward,
        awards: store.state.awardState.awards,
        error: store.state.awardState.error,
        /*awardSelected: (Award award) =>
            store.dispatch(AwardChosenAction(award)),
        awardUnselected: () => store.dispatch(AwardUnChosenAction())*/
        );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is AwardViewModel &&
              runtimeType == other.runtimeType &&
              loadingStatus == other.loadingStatus &&
              error == other.error &&
              selectedAward == other.selectedAward;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      error.hashCode ^
      selectedAward.hashCode;
}
