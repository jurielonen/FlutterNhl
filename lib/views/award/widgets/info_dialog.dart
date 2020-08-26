import 'package:FlutterNhl/constants/styles.dart';
import 'package:FlutterNhl/redux/models/award/award.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';

class InfoButton extends StatelessWidget {
  final Award award;
  const InfoButton({Key key, @required this.award}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(icon: Icon(Icons.info_outline), onPressed: () => _showInfoDialog(award, context));
  }
  Future<void> _showInfoDialog(Award award, BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Padding(padding: EdgeInsets.all(8.0), child: Styles.buildNetworkCircleIcon(award.imageUrl, size: 40.0)),
            Expanded(child: Text(award.name, overflow: TextOverflow.ellipsis))
          ],),
          content: Container(
            decoration: BoxDecoration(color: Colors.grey),
            child: SingleChildScrollView(
                child: Html(data: award.description, style: {"p": Style.fromTextStyle(Styles.infoTableValueText.copyWith(color: Colors.black)),},)
            ),
          ),
          contentPadding: const EdgeInsets.only(),
          titlePadding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          actionsPadding: const EdgeInsets.only(),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

