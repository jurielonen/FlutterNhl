import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:flutter/material.dart';

import 'error_view.dart';

class NestedTemplateViewAppBarContent {
  Widget getTitle(bool isScrolled) {}
  Widget getExpanded() {}
}

class NestedTemplateView extends StatefulWidget {
  final Map<String, Widget> tabs;
  final LoadingStatus loadingStatus;
  final String errorMsg;
  final Function(int) onTabPressed;
  final NestedTemplateViewAppBarContent content;

  const NestedTemplateView(
      {Key key,
      this.tabs,
      this.loadingStatus,
      this.errorMsg,
      this.onTabPressed, this.content})
      : super(key: key);

  @override
  _NestedTemplateViewState createState() => _NestedTemplateViewState();
}

class _NestedTemplateViewState extends State<NestedTemplateView>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollController;
  bool _isScrolled = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_listenToScrollChange);
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
      controller: _scrollController,
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            sliver: _createAppBar(_tabController, widget.content),
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

  Widget _createAppBar(TabController controller, NestedTemplateViewAppBarContent content) {
    return SliverAppBar(
      title: content.getTitle(_isScrolled),
      pinned: true,
      forceElevated: true,
      expandedHeight: 200,
      flexibleSpace: content.getExpanded(),
      bottom: TabBar(
        controller: controller,
        tabs: widget.tabs.keys
            .map((String name) => Tab(
          text: name,
        ))
            .toList(),
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

  void _listenToScrollChange() {
    if (_scrollController.offset >= 48.0) {
      setState(() {
        _isScrolled = true;
      });
    } else {
      setState(() {
        _isScrolled = false;
      });
    }
  }
}
