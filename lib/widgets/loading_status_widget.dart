import 'package:FlutterNhl/redux/enums.dart';
import 'package:FlutterNhl/widgets/error_view.dart';
import 'package:FlutterNhl/widgets/progress_view.dart';
import 'package:flutter/material.dart';

Widget loadingStatusWidget(
    LoadingStatus loadingStatus, String msg, Exception error) {
  switch (loadingStatus) {
    case LoadingStatus.IDLE:
      return ProgressView(msg);
    case LoadingStatus.LOADING:
      return ProgressView(msg);
    case LoadingStatus.ERROR:
      return ErrorView(error);
    case LoadingStatus.SUCCESS:
      return null;
    default:
      return ErrorView(UIUnknownStateException('msg'));
  }
}
