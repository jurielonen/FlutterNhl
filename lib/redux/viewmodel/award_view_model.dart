import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/models/award/award.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/collection.dart';
import 'package:redux/redux.dart';

class AwardViewModel {
  final LoadingStatus loadingStatus;
  final int selectedAward;
  final KtMap<int, Award> awards;
  final String errorMsg;
  /*final Function(Award) awardSelected;
  final Function() awardUnselected;*/

  AwardViewModel({
    @required this.loadingStatus,
    @required this.selectedAward,
    @required this.awards,
    @required this.errorMsg,
    //@required this.awardSelected,
    //@required this.awardUnselected,
  });

  static AwardViewModel fromStore(Store<AppState> store) {
    return AwardViewModel(
        loadingStatus: store.state.awardState.loadingStatus,
        selectedAward: store.state.awardState.selectedAward,
        awards: store.state.awardState.awards,
        errorMsg: store.state.awardState.errorMsg,
        /*awardSelected: (Award award) =>
            store.dispatch(AwardChosenAction(award)),
        awardUnselected: () => store.dispatch(AwardUnChosenAction())*/
        );
  }
}
