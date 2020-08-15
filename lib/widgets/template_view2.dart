import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/widgets/custom_scroll_template_view.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:flutter/material.dart';

class TemplateView2 extends StatefulWidget {
  final LoadingStatus loadingStatus;
  final String errorMsg;
  final List<String> tabs;
  final Function(int) onTabPressed;
  final List<Widget> Function(int) pageContent;
  final int initialIndex;

  const TemplateView2(
      {Key key,
      @required this.loadingStatus,
      @required this.errorMsg,
      @required this.tabs,
      @required this.onTabPressed,
      @required this.pageContent,
      this.initialIndex = 0})
      : super(key: key);
  @override
  _TemplateView2State createState() => _TemplateView2State();
}

class _TemplateView2State extends State<TemplateView2>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    int initialIndex = 0;
    if(widget.initialIndex != 0 && widget.tabs.length > widget.initialIndex)
      initialIndex = widget.initialIndex;

    _tabController =
        TabController(vsync: this, length: widget.tabs.length, initialIndex: initialIndex);
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
            sliver: SliverAppBar(
              primary: true,
              pinned: true,
              forceElevated: true,
              title: Text('Stats'),
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
            child: CustomScrollTemplateView(slivers: _getStateWidget()),
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
        return [SliverErrorView(msg: widget.errorMsg)];
        break;
      case LoadingStatus.SUCCESS:
        return widget.pageContent(_tabController.index);
        break;
      default:
        return [SliverErrorView(msg: 'Unknown state')];
    }
  }
}
