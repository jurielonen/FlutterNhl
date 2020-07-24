import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:flutter/material.dart';

import 'error_view.dart';

class NestedTemplateViewAppBarContent {
  double expandedHeight() { return 0; }
  /*bool titleUsed() { return false;}
  bool expandedUsed() { return false;}*/
  Widget getLeading() {return null;}
  Widget getTitle(bool isScrolled) {return null;}
  Widget getExpanded() { return null;}
}

class NestedTemplateView extends StatefulWidget {
  final Map<String, List<Widget>> tabs;
  final LoadingStatus loadingStatus;
  final String errorMsg;
  final Function(int) onTabPressed;
  final NestedTemplateViewAppBarContent content;

  const NestedTemplateView(
      {Key key,
      this.tabs,
      this.loadingStatus,
      this.errorMsg,
      this.onTabPressed,
      this.content})
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
            key: PageStorageKey<String>(name),
            top: false,
            bottom: false,
            child: Builder(
              builder: (BuildContext context) {
                return CustomScrollView(
                    slivers: _getStateWidget(context, name));
              },
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _createAppBar(
      TabController controller, NestedTemplateViewAppBarContent content) {
    return SliverAppBar(
      title: content.getTitle(_isScrolled),
      leading: content.getLeading(),
      pinned: true,
      forceElevated: true,
      expandedHeight: content.expandedHeight(),
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

  List<Widget> _getStateWidget(BuildContext context, String tab) {
    List<Widget> widgets = [
      SliverOverlapInjector(
        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
      )
    ];
    switch (widget.loadingStatus) {
      case LoadingStatus.IDLE:
      case LoadingStatus.LOADING:
        widgets.add(SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: SliverFillRemaining(
            child: ProgressView('Loading player'),
          ),
        ));
        break;
      case LoadingStatus.ERROR:
        widgets.add(SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: SliverFillRemaining(
            child: ErrorView(widget.errorMsg),
          ),
        ));
        break;
      case LoadingStatus.SUCCESS:
        widgets.addAll(widget.tabs[tab]);
        break;
      default:
        widgets.add(SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: ErrorView('Unknown state'),
        ));
    }
    return widgets;
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
