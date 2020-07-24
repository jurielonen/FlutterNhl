import 'package:FlutterNhl/redux/models/award/award.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';

class AwardRequestingAction extends AwardAction {}

class AwardAlreadyDownloadedAction  extends AwardAction {}

class AwardDownloadedAction extends AwardAction {
  final Map<int, Award> awards;
  AwardDownloadedAction(this.awards);
}

class AwardChosenAction extends AwardAction {
  final int selectedAward;
  AwardChosenAction(this.selectedAward);
}
class AwardRecipientDownloadedAction extends AwardAction {
  final List<AwardFinalists> recipients;

  AwardRecipientDownloadedAction(this.recipients);
}

class AwardRecipientAlreadyDownloadedAction extends AwardAction {}

class AwardError extends AwardAction {
  final String error;
  AwardError(this.error);
}

class AwardUnChosenAction extends AwardAction {}