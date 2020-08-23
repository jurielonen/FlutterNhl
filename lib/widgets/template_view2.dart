import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/widgets/custom_scroll_template_view.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:flutter/material.dart';

class TemplateView2 extends StatefulWidget {
  final LoadingStatus loadingStatus;
  final Exception error;
  final List<String> tabs;
  final Function(int) onTabPressed;
  final List<Widget> Function(int) pageContent;
  final int initialIndex;
  final List<Widget> actions;

  const TemplateView2(
      {Key key,
      @required this.loadingStatus,
      @required this.error,
      @required this.tabs,
      @required this.onTabPressed,
      @required this.pageContent,
      this.actions,
      this.initialIndex = 0})
      : super(key: key);
  @override
  _TemplateView2State createState() => _TemplateView2State();
}

class _TemplateView2State extends State<TemplateView2>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    int initialIndex = 0;
    if(widget.initialIndex != 0 && widget.tabs.length > widget.initialIndex)
      initialIndex = widget.initialIndex;

    _tabController =
        TabController(vsync: this, length: widget.tabs.length, initialIndex: initialIndex);
    _pageController = new PageController(initialPage: _tabController.index);
  }



  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            sliver: SliverAppBar(
              primary: true,
              pinned: true,
              forceElevated: true,
              title: Text('Stats'),
              actions: widget.actions,
              bottom: TabBar(
                controller: _tabController,
                onTap: (int index) => widget.onTabPressed(index),
                tabs: widget.tabs.map(
                      (String tab) => Tab(child: Text(tab))).toList(),
              ),
            ),
          ),
        ];
      },
      body: TabBarView(
        controller: _tabController,
        physics: NeverScrollableScrollPhysics(),
        children: widget.tabs.map((tab) {
          return SafeArea(
            top: false,
            bottom: false,
            child: PageView.builder(
              physics: NeverScrollableScrollPhysics(),
              controller: _pageController,
              itemBuilder: (context, position) {
                return CustomScrollTemplateView(slivers: _getStateWidget());
              },
              itemCount: _tabController.length,
            ),
            //CustomScrollTemplateView(slivers: _getStateWidget()),
          );
        }).toList(),
      ),
    );
  }

  List<Widget> _getStateWidget() {
    switch (widget.loadingStatus) {
      case LoadingStatus.IDLE:
      case LoadingStatus.LOADING:
        return [SliverProgressView(msg: 'Loading Stats')];
        break;
      case LoadingStatus.ERROR:
        return [SliverErrorView(error: widget.error)];
        break;
      case LoadingStatus.SUCCESS:
        return widget.pageContent(_tabController.index);
        break;
      default:
        return [SliverErrorView(error: UIUnknownStateException('Unknown state'))];
    }
  }
}
