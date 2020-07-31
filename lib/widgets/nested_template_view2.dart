import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/widgets/custom_scroll_template_view.dart';
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
  final Map<String, Widget> successContent;

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
  PageController _pageController;
  bool _isScrolled = false;
  //int _currentTab = 0;

  @override
  void initState() {
    print('initState');
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
    _pageController = new PageController(initialPage: _tabController.index);
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
        physics: NeverScrollableScrollPhysics(),
        children: widget.tabs.map(
          (String name) {
            return SafeArea(
              top: false,
              bottom: false,
              child: PageView.builder(
                physics: NeverScrollableScrollPhysics(),
                controller: _pageController,
                itemBuilder: (context, position) {
                  return _getStateWidget(context, widget.tabs[_tabController.index]);
                },
                itemCount: widget.tabs.length,
              ),
            );
          },
        ).toList(),
      ),
    );
    /*return SafeArea(
            top: false,
            bottom: false,
            child: Builder(
              builder: (BuildContext context) {
                return _getStateWidget(context, name);
              },
            ).toList(),
          ),);
        }).toList(),
      ),
    );*/
  }

  Widget _createAppBar(
      TabController controller, NestedTemplateViewAppBarContent content) {
    return SliverAppBar(
      //title: content.getTitle(_isScrolled),
      automaticallyImplyLeading: content.getLeading(),
      pinned: true,
      floating: false,
      forceElevated: true,
      expandedHeight: content.expandedHeight(),
      //flexibleSpace: content.getExpanded(),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: TabBar(
          controller: controller,
          tabs: widget.tabs
              .map((String name) => Tab(
                    text: name,
                  ))
              .toList(),
        ),
      ),
    );
  }

  Widget _getStateWidget(BuildContext context, String tab) {
    print('_getStateWidget: $tab');
    switch (widget.loadingStatus) {
      case LoadingStatus.IDLE:
      case LoadingStatus.LOADING:
        return SliverProgressView(msg: 'Loading player');
        break;
      case LoadingStatus.ERROR:
        return SliverErrorView(msg: widget.errorMsg);
        break;
      case LoadingStatus.SUCCESS:
        return widget.successContent[tab];
        break;
      default:
        return CustomScrollTemplateView(
          slivers: <Widget>[
            SliverErrorView(msg: 'Unknown state'),
          ],
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
