import 'package:flutter/material.dart';

class CustomScrollTemplateView extends StatelessWidget {
  final List<Widget> slivers;
  const CustomScrollTemplateView({Key key, @required this.slivers}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverOverlapInjector(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        ),
        ...slivers,
      ],
    );
  }
}
