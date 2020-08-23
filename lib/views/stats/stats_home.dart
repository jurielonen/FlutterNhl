import 'package:FlutterNhl/redux/api/stat_parameter.dart';
import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/redux/states/app_state_actions.dart';
import 'package:FlutterNhl/redux/viewmodel/stats_view_model.dart';
import 'package:FlutterNhl/redux/states/app_state.dart';
import 'package:FlutterNhl/views/navigation/arguments.dart';
import 'package:FlutterNhl/views/stats/stat_widgets/stat_filter_popup.dart';
import 'package:FlutterNhl/widgets/custom_data_table.dart';
import 'package:FlutterNhl/widgets/custom_dropdown_button.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';


class StatsHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, StatsAppBarViewModel>(
      distinct: true,
      onInit: (store) => store.dispatch(StatsEntered()),
      converter: (store) => StatsAppBarViewModel.fromStore(store),
      builder: (ctx, appBarVM) {
        print('BUILDINGHEADER');
        return NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  title: const Text('Stats'),
                  pinned: true,
                  forceElevated: innerBoxIsScrolled,
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(50.0),
                    child: Container(
                      height: 50.0,
                      child: Row(
                        children: StatType.values
                            .map(
                              (type) => Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    if (appBarVM.type != type) {
                                        appBarVM.typeChanged(type);
                                    }
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: type == appBarVM.type
                                                      ? Colors.white
                                                      : Colors.transparent,
                                                  width: 3.0))),
                                      height: 50.0,
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text(statTypeToString(type)))),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                ),
              )
            ];
          },
          body: Builder(
            builder: (BuildContext context) {
              return CustomScrollView(
                slivers: <Widget>[
                  SliverOverlapInjector(
                      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                          context)),
                  _buildFilterBar(),
                  _buildBodyView()
                ],
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildBodyView() {
    return StoreConnector<AppState, StatsBodyViewModel>(
      distinct: true,
      converter: (store) => StatsBodyViewModel.fromStore(store),
      builder: (ctx, bodyVM) {
        print('BUILDINGBODY');
        switch (bodyVM.loadingStatus) {
          case LoadingStatus.IDLE:
          case LoadingStatus.LOADING:
            return SliverProgressView(msg: 'Loading Stats');
            break;
          case LoadingStatus.ERROR:
            return SliverErrorView(error: bodyVM.error);
            break;
          case LoadingStatus.SUCCESS:
            if (bodyVM.downloadedStats == null) {
              return SliverErrorView(
                  error: UINoDataDownloadedException(
                      'stats_home _buildStatsView'));
            } else {
              bodyVM.downloadedStats.columnCallBack =
                  (String stat, bool ascending) {
                bodyVM.selectedParams.setSort(stat, ascending);
                bodyVM.paramsChanged(bodyVM.selectedParams);
              };
              return SliverFillRemaining(
                hasScrollBody: true,
                fillOverscroll: true,
                child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: CustomDataTable(
                        dataTableSource: bodyVM.downloadedStats)),
              );
            }
            break;
          default:
            return SliverErrorView(
                error: UIUnknownStateException('Unknown state'));
        }
      },
    );
  }

  void setFilters(BuildContext context, StatParameters parameters,
      Function(StatParameters) paramsChanged) async {
    StatParameters returnVal = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                StatFilterPage(arguments: FilterArguments(parameters))));
    if (returnVal != null) {
      paramsChanged(returnVal);
    }
  }

  Widget _buildFilterBar() {
    return StoreConnector<AppState, StatFilterBarViewModel>(
        distinct: true,
        converter: (store) => StatFilterBarViewModel.fromStore(store),
        builder: (ctx, filterVM) {
          print('BUILDINGFILTER');
          return SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(color: Colors.black),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.navigate_before),
                    tooltip: 'Previous page',
                    onPressed: filterVM.selectedParams.isThereLastPage
                        ? () => filterVM.previousPage()
                        : null,
                  ),
                  CustomDropdownButton(
                    selectedValue: filterVM.selectedParams.paramType.stat,
                    values: filterVM.statTypes,
                    onValueChanged: filterVM.statChanged,
                  ),
                  IconButton(
                    icon: Icon(Icons.navigate_next),
                    tooltip: 'Next page',
                    onPressed: filterVM.selectedParams.isThereNextPage
                        ? () => filterVM.nextPage()
                        : null,
                  ),
                  IconButton(
                    icon: const Icon(Icons.sort),
                    tooltip: 'Set filters',
                    onPressed: () => setFilters(ctx,
                        filterVM.selectedParams, filterVM.paramsChanged),
                  ),
                ],
              ),
            ),
          );
        },);
  }
}
