import 'package:flutter/material.dart';

import '../auth.dart';
import 'google_login.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFFF17532),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.zero,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      imageUrl,
                    ),
                    radius: 40,
                    backgroundColor: Colors.transparent,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  email,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.red,
              ),
              title: Text(
                "Sign Out",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.red,
                ),
              ),
              onTap: () {
                signOutGoogle();
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) {
                  return GoogleLogin();
                }), ModalRoute.withName('/'));
              }),
        ],
      ),
    );
  }
}
