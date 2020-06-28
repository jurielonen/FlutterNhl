import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:flutter/material.dart';

import 'error_view.dart';

class NestedTemplateView extends StatefulWidget {
  final Map<String, Widget> tabs;
  final LoadingStatus loadingStatus;
  final Function(TabController) appBar;
  final String errorMsg;
  final Function(int) onTabPressed;

  const NestedTemplateView(
      {Key key,
      this.tabs,
      this.loadingStatus,
      this.appBar,
      this.errorMsg,
      this.onTabPressed})
      : super(key: key);

  @override
  _NestedTemplateViewState createState() => _NestedTemplateViewState();
}

class _NestedTemplateViewState extends State<NestedTemplateView>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: widget.tabs.length);
    _tabController.index = 0;
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        widget.onTabPressed(_tabController.index);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            sliver: widget.appBar(_tabController),
          ),
        ];
      },
      body: TabBarView(
        controller: _tabController,
        children: widget.tabs.keys.map((String name) {
          return SafeArea(
            top: false,
            bottom: false,
            child: Builder(
              builder: (BuildContext context) {
                return CustomScrollView(
                  slivers: <Widget>[
                    SliverOverlapInjector(
                      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                          context),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.all(8.0),
                      sliver: _getStateWidget(name),
                    ),
                  ],
                );
              },
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _getStateWidget(String tab) {
    switch (widget.loadingStatus) {
      case LoadingStatus.IDLE:
      case LoadingStatus.LOADING:
        return SliverFillRemaining(
          child: ProgressView('Loading player'),
        );
      case LoadingStatus.ERROR:
        return SliverFillRemaining(
          child: ErrorView(widget.errorMsg),
        );
      case LoadingStatus.SUCCESS:
        return widget.tabs[tab];
      default:
        return SliverFillRemaining(
          child: ErrorView('Unknown state'),
        );
    }
  }
}

/*class NestedTemplateView extends StatelessWidget {

  final Map<String, Widget> tabs;
  final LoadingStatus loadingStatus;
  final Widget appBar;
  final String errorMsg;

  const NestedTemplateView({this.tabs, this.loadingStatus, this.appBar, this.errorMsg});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return <Widget>[
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: appBar,
            ),
          ];
        },
        body: TabBarView(
          children: tabs.keys.map((String name) {
            return SafeArea(
              top: false,
              bottom: false,
              child: Builder(
                builder: (BuildContext context){
                  return CustomScrollView(
                    slivers: <Widget>[
                      SliverOverlapInjector(
                        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                      ),
                      SliverPadding(
                        padding: const EdgeInsets.all(8.0),
                        sliver: _getStateWidget(name),
                      ),
                    ],
                  );
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _getStateWidget(String tab){
    switch(loadingStatus){
      case LoadingStatus.IDLE:
      case LoadingStatus.LOADING:
        return SliverFillRemaining(
          child: ProgressView('Loading schedule'),
        );
      case LoadingStatus.ERROR:
        return SliverFillRemaining(
          child: ErrorView(errorMsg),
        );
      case LoadingStatus.SUCCESS:
        return tabs[tab];
      default:
        return SliverFillRemaining(
          child: ErrorView('Unknown state'),
        );
    }
  }
}
*/
