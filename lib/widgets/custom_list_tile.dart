import 'package:FlutterNhl/constants/styles.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final Widget thumbnail;
  final String title;
  final Map<String, String> listItems;

  const CustomListTile({Key key, this.thumbnail, this.title, this.listItems})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: thumbnail,
          ),
          Expanded(
            flex: 3,
            child: _Description(
              title: title,
              listItems: listItems,
            ),
          ),
        ],
      ),
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({
    Key key,
    this.title,
    this.listItems,
  }) : super(key: key);

  final String title;
  final Map<String, String> listItems;

  Iterable<Widget> get items sync* {
    yield Text(
      title,
      style: Styles.cardTeamWinnerText,
    );
    for (String key in listItems.keys) {
      yield Padding(
        padding: const EdgeInsets.symmetric(vertical: 1.0),
        child: Text('$key: ${listItems[key]}'),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: items.toList()),
    );
  }
}
