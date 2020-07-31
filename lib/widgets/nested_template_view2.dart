import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/nested_template_view.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:flutter/material.dart';

class NestedTemplateView2 extends StatefulWidget {
  final List<String> tabs;
  final LoadingStatus loadingStatus;
  final String errorMsg;
  final Function(int) onTabPressed;
  final NestedTemplateViewAppBarContent content;
  final Widget Function(String tab) successContent;

  const NestedTemplateView2({
    Key key,
    @required this.tabs,
    @required this.loadingStatus,
    @required this.errorMsg,
    @required this.onTabPressed,
    @required this.content,
    @required this.successContent,
  }) : super(key: key);

  @override
  _NestedTemplateView2State createState() => _NestedTemplateView2State();
}

class _NestedTemplateView2State extends State<NestedTemplateView2>
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
        children: widget.tabs.map((String name) {
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
                    _getStateWidget(context, name),
                  ],
                );
                //return _getStateWidget(context, name);
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
      automaticallyImplyLeading: content.getLeading(),
      pinned: true,
      forceElevated: true,
      expandedHeight: content.expandedHeight(),
      flexibleSpace: content.getExpanded(),
      bottom: TabBar(
        controller: controller,
        tabs: widget.tabs
            .map((String name) => Tab(
                  text: name,
                ))
            .toList(),
      ),
    );
  }

  Widget _getStateWidget(BuildContext context, String tab) {
    /*List<Widget> widgets = [
      SliverOverlapInjector(
        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
      )
    ];*/
    switch (widget.loadingStatus) {
      case LoadingStatus.IDLE:
      case LoadingStatus.LOADING:
        return SliverProgressView(msg: 'Loading player');
        break;
      case LoadingStatus.ERROR:
        return SliverErrorView(msg: widget.errorMsg);
        break;
      case LoadingStatus.SUCCESS:
        return widget.successContent(tab);
        break;
      default:
        return SliverErrorView(msg: 'Unknown state');
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
