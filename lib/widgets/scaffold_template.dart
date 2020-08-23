import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:flutter/material.dart';

class TemplateTab {
  final Widget child;
  final String text;

  TemplateTab({@required this.child, @required this.text});
}

class ScaffoldTemplate extends StatefulWidget {
  final Widget appBarTitle;
  final List<TemplateTab> tabs;
  final LoadingStatus loadingStatus;
  final Exception error;
  final Widget Function(String tab) onTabChanged;
  final Function(int) onTabPressed;
  final String loadingText;
  final bool automaticLeading;

  const ScaffoldTemplate(
      {Key key,
      @required this.loadingStatus,
      @required this.error,
      @required this.onTabChanged,
      @required this.appBarTitle,
      @required this.tabs,
      @required this.loadingText,
      @required this.onTabPressed,
      this.automaticLeading = false})
      : super(key: key);

  @override
  _ScaffoldTemplateState createState() => _ScaffoldTemplateState();
}

class _ScaffoldTemplateState extends State<ScaffoldTemplate>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(vsync: this, length: widget.tabs.length, initialIndex: 0);
    _pageController = PageController(initialPage: _tabController.index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: widget.automaticLeading,
        title: widget.appBarTitle,
        bottom: TabBar(
          isScrollable: widget.tabs.length > 4 ? true : false,
          controller: _tabController,
          onTap: (int index) {
            if (widget.onTabPressed != null) widget.onTabPressed(index);
          },
          tabs: widget.tabs
              .map(
                (tab) => Tab(
                  child: tab.child,
                ),
              )
              .toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        physics: NeverScrollableScrollPhysics(),
        children: widget.tabs.map((tab) {
          String text = tab.text;
          return SafeArea(
            top: false,
            bottom: false,
            child: PageView.builder(
              physics: NeverScrollableScrollPhysics(),
              controller: _pageController,
              itemBuilder: (context, position) {
                return _getPageContent(text);
              },
              itemCount: widget.tabs.length,
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _getPageContent(String text) {
    switch (widget.loadingStatus) {
      case LoadingStatus.IDLE:
      case LoadingStatus.LOADING:
        return ProgressView(widget.loadingText);
      case LoadingStatus.SUCCESS:
        return widget.onTabChanged(text);
      case LoadingStatus.ERROR:
        return ErrorView(widget.error == null ? UIUnknownStateException('Unknown tab scaffold template') : widget.error);
      default:
        return ErrorView(UIUnknownStateException('Unknown tab scaffold template: $text'));
    }
  }
}

class RefreshScaffoldTemplate extends StatefulWidget {
  final Widget appBarTitle;
  final List<TemplateTab> tabs;
  final LoadingStatus loadingStatus;
  final Exception error;
  final Widget Function(String tab) onTabChanged;
  final Function(int) onTabPressed;
  final String loadingText;
  final bool automaticLeading;
  final VoidCallback refreshCallBack;

  const RefreshScaffoldTemplate(
      {Key key,
      @required this.loadingStatus,
      @required this.error,
      @required this.onTabChanged,
      @required this.appBarTitle,
      @required this.tabs,
      @required this.loadingText,
      @required this.onTabPressed,
      @required this.refreshCallBack,
      this.automaticLeading = false})
      : super(key: key);

  @override
  _RefreshScaffoldTemplate createState() => _RefreshScaffoldTemplate();
}

class _RefreshScaffoldTemplate extends State<RefreshScaffoldTemplate>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(vsync: this, length: widget.tabs.length, initialIndex: 0);
    _pageController = PageController(initialPage: _tabController.index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: widget.automaticLeading,
        title: widget.appBarTitle,
        bottom: TabBar(
          isScrollable: widget.tabs.length > 4 ? true : false,
          controller: _tabController,
          onTap: (int index) {
            if (widget.onTabPressed != null) widget.onTabPressed(index);
          },
          tabs: widget.tabs
              .map(
                (tab) => Tab(
                  child: tab.child,
                ),
              )
              .toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        physics: NeverScrollableScrollPhysics(),
        children: widget.tabs.map((tab) {
          String text = tab.text;
          return SafeArea(
            top: false,
            bottom: false,
            child: PageView.builder(
              physics: NeverScrollableScrollPhysics(),
              controller: _pageController,
              itemBuilder: (context, position) {
                return RefreshIndicator(
                  child: _getPageContent(text),
                  onRefresh: () async { widget.refreshCallBack();},
                );
              },
              itemCount: widget.tabs.length,
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _getPageContent(String text) {
    switch (widget.loadingStatus) {
      case LoadingStatus.IDLE:
      case LoadingStatus.LOADING:
        return ProgressView(widget.loadingText);
      case LoadingStatus.SUCCESS:
        return widget.onTabChanged(text);
      case LoadingStatus.ERROR:
        return ErrorView(widget.error == null ? UIUnknownStateException('Error') : widget.error);
      default:
        return ErrorView(UIUnknownStateException('Unknown tab scaffold template: $text'));
    }
  }
}
