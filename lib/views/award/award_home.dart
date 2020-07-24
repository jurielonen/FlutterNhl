import 'package:FlutterNhl/redux/models/award/award.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/viewmodel/award_view_model.dart';
import 'package:FlutterNhl/views/award/recipient/recipient_home.dart';
import 'package:FlutterNhl/widgets/content_card.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/template_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:kt_dart/collection.dart';

class AwardsHome extends StatelessWidget {
  static const String routeName = '/awards';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AwardViewModel>(
      distinct: true,
      onInit: (store) => store.dispatch(AwardEntered()),
      converter: (store) => AwardViewModel.fromStore(store),
      builder: (ctx, viewModel) => TemplateView(
        viewModel.loadingStatus,
        _buildBody(ctx, viewModel.awards),
        _buildAppBar(),
        viewModel.errorMsg,
      ),
    );
  }

  Widget _buildBody(BuildContext ctx, KtMap<int, Award> awards) {
    if (awards.isEmpty()) {
      return SliverFillRemaining(
        child: ErrorView('No data downloaded yet'),
      );
    }

    return SliverFixedExtentList(
      itemExtent: 300.0,
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final award = awards.toList()[index];
          return ImageCard(
            onPressed: () {
              print('pressed: ${award.second.name}');
              Navigator.pushNamed(ctx, RecipientHome.routeName, arguments: award.first);
            },
            imageUrl: award.second.imageUrl,
            title: award.second.name,
            description: award.second.briefDesc,
          );
        },
        childCount: awards.size,
      ),
    );
  }

  Widget _buildAppBar() {
    return SliverAppBar(
      pinned: true,
      floating: false,
      snap: false,
      title: const Text('Awards'),
    );
  }
}
