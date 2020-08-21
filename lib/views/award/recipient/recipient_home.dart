import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/award/award.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/redux/states/award/award_actions.dart';
import 'package:FlutterNhl/redux/viewmodel/recipient_view_model.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/template_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:FlutterNhl/widgets/custom_data_table.dart';

class RecipientHome extends StatefulWidget {
  static const String routeName = '/recipient';
  final int selectedAward;
  const RecipientHome({Key key, @required this.selectedAward}) : super(key: key);

  @override
  _RecipientHomeState createState() => _RecipientHomeState();
}

class _RecipientHomeState extends State<RecipientHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoreConnector<AppState, RecipientViewModel>(
        distinct: true,
        onInit: (store) => store.dispatch(AwardChosenAction(widget.selectedAward)),
        converter: (store) => RecipientViewModel.fromStore(store),
        onDispose: (store) {
          store.dispatch(AwardUnChosenAction());
        },
        builder: (ctx, viewModel) => TemplateView(
          viewModel.loadingStatus,
            () => _buildBody(viewModel.award),
          _buildAppBar(viewModel.award.award),
          viewModel.errorMsg,
        ),
      ),
    );
  }

  Widget _buildBody(AwardTableSource award){
    if(award != null && !award.award.isRecipientsEmpty()){
      return SliverToBoxAdapter(
        child: Column(
          children: [
            Center(
            child: Container(
              height: 50,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.navigate_before),
                    tooltip: 'Previous page',
                    onPressed: award.pagesPrevious ? () {
                      setState(() {
                        award.previousPage();
                      });
                    } : null,
                  ),
                  Text(award.headerText),
                  IconButton(
                    icon: Icon(Icons.navigate_next),
                    tooltip: 'Next page',
                    onPressed: award.pagesNext ? () {
                      setState(() {
                        award.nextPage();
                      });
                    } : null,
                  ),
                ],
              ),
            ),
          ),
            CustomDataTable(dataTableSource: award),
            ]
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
        title: Row(children: [
          Padding(padding: EdgeInsets.all(8.0), child: Styles.buildNetworkCircleIcon(award.imageUrl, size: 40.0)),
          Expanded(child: Text(award.name, overflow: TextOverflow.ellipsis))
        ],),
        actions: [
          IconButton(icon: Icon(Icons.info_outline), onPressed: () => _showInfoDialog(award))
        ],
      );
    }
    return SliverAppBar(
      title: const Text('Award'),
    );
  }

  Future<void> _showInfoDialog(Award award) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(award.name),
        content: SingleChildScrollView(
          child: Html(data: award.description, style: {"p": Style.fromTextStyle(Styles.infoTableValueText),},)
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Okay!'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

}
