import 'package:FlutterNhl/constants/route.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final Function(DrawerPages) onTilePressed;

  AppDrawer({@required this.onTilePressed});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(
              icon: Icons.calendar_today,
              text: 'Schedule',
              onTap: () => _tilePressed(context, DrawerPages.SCHEDULE)),
          _createDrawerItem(
              icon: Icons.person,
              text: 'Stats',
              onTap: () => _tilePressed(context, DrawerPages.STATS)),
          _createDrawerItem(
              icon: Icons.error,
              text: 'Standings',
              onTap: () => _tilePressed(context, DrawerPages.STANDINGS)),
          _createDrawerItem(
              icon: Icons.drafts,
              text: 'Draft',
              onTap: () => _tilePressed(context, DrawerPages.DRAFT)),
          _createDrawerItem(
              icon: Icons.account_balance_wallet,
              text: 'Awards',
              onTap: () => _tilePressed(context, DrawerPages.AWARDS)),
          Divider(),
        ],
      ),
    );
  }

  void _tilePressed(BuildContext context, DrawerPages page){
    onTilePressed(page);
    Navigator.pop(context);
  }

  Widget _createHeader() {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/drawer_header_background.png'))),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text(
              "NHL Application",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
