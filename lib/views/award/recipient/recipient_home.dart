import 'package:FlutterNhl/redux/models/award/award.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/award/award_actions.dart';
import 'package:FlutterNhl/redux/viewmodel/recipient_view_model.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/template_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class RecipientHome extends StatelessWidget {
  static const String routeName = '/recipient';
  final int selectedAward;
  const RecipientHome({Key key, @required this.selectedAward}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoreConnector<AppState, RecipientViewModel>(
        distinct: true,
        onInit: (store) => store.dispatch(AwardChosenAction(selectedAward)),
        converter: (store) => RecipientViewModel.fromStore(store),
        onDispose: (store) {
          print('onDispose RecipientHome');
          store.dispatch(AwardUnChosenAction());
        },
        builder: (ctx, viewModel) => TemplateView(
          viewModel.loadingStatus,
            () => _buildBody(viewModel.award),
          _buildAppBar(viewModel.award),
          viewModel.errorMsg,
        ),
      ),
    );
  }

  Widget _buildBody(Award award){
    if(award != null && !award.isRecipientsEmpty()){
      AwardDataTableSource source = AwardDataTableSource(award: award);
      return SliverToBoxAdapter(
        child: PaginatedDataTable(
          header: Text('Winners'),
          columns: source.columns,
          source: source,
          rowsPerPage: source.rowsPerPage,
        ),
      );
    }

    return SliverFillRemaining(
      child: ErrorView('No data downloaded yet'),
    );
  }

  Widget _buildAppBar(Award award){
    if(award != null) {
      return SliverAppBar(
        pinned: true,
        floating: false,
        snap: false,
        title: Text(award.name),
        expandedHeight: 200,
        flexibleSpace: FlexibleSpaceBar(
          background: Text(award.description),
        ),
      );
    }
    return SliverAppBar(
      title: const Text('Award'),
    );
  }
}
