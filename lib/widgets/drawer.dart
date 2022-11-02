import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final ImageURL =
      "https://cloudfront-us-east-2.images.arcpublishing.com/reuters/5WJ6WOIYKRNB3CF36QNZUHOJZI.jpg";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          color: Colors.deepPurple,
          child: ListView(padding: EdgeInsets.zero, children: [
            DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(ImageURL),
                  ),
                  accountName: Text(
                    "Shubh Gupta",
                    textScaleFactor: 1.1,
                  ),
                  accountEmail: Text(
                    "shubhngupta04@gmail.com",
                    textScaleFactor: 1.1,
                  ),
                )),
            const ListTile(
              title: Text(
                "Home",
                style: TextStyle(
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                ),
                textScaleFactor: 1.2,
              ),
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
            ),
            const ListTile(
              title: Text(
                "Profile",
                style: TextStyle(
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                ),
                textScaleFactor: 1.2,
              ),
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
            ),
            const ListTile(
              title: Text(
                "Contact Us",
                style: TextStyle(
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                ),
                textScaleFactor: 1.2,
              ),
              leading: Icon(
                CupertinoIcons.envelope,
                color: Colors.white,
              ),
            )
          ])),
    );
  }
}
