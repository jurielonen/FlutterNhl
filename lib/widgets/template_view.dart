import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:flutter/material.dart';

class TemplateView extends StatelessWidget {
  final LoadingStatus loadingStatus;
  final Widget successContent;
  final Widget appBar;
  final String errorMsg;

  TemplateView(
      this.loadingStatus, this.successContent, this.appBar, this.errorMsg,
      {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        appBar,
        _getStateWidget(),
      ],
    );
  }

  Widget _getStateWidget() {
    switch (loadingStatus) {
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
        return successContent;
      default:
        return SliverFillRemaining(
          child: ErrorView('Unknown state'),
        );
    }
  }
}

class RefreshTemplateView extends StatelessWidget {
  final LoadingStatus loadingStatus;
  final Widget successContent;
  final Widget appBar;
  final String errorMsg;
  final RefreshCallback callback;

  RefreshTemplateView(
      {@required this.loadingStatus,
      @required this.successContent,
      @required this.appBar,
      @required this.errorMsg,
      @required this.callback,
      Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxScrolled) => [
        appBar,
      ],
      body: RefreshIndicator(
        child: CustomScrollView(
          slivers: <Widget>[
            _getStateWidget(),
          ],
        ),
        onRefresh: () async {
          await callback();
        },
      ),
    );
  }

  Widget _getStateWidget() {
    switch (loadingStatus) {
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
        return successContent;
      default:
        return SliverFillRemaining(
          child: ErrorView('Unknown state'),
        );
    }
  }
}
