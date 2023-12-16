import 'package:flutter/material.dart';
import 'package:loginui/userinterfaces/feedback.dart';
import 'package:loginui/userinterfaces/home.dart';
import 'package:loginui/authenauthor/login.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'DaLeLk',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 4, 82, 121),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/cover.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.notification_add_rounded),
            title: Text('Notifications'),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context)=>FeedbackPage()))},
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Admin Panel'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('User Managment'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.query_builder_rounded),
            title: Text('inquiry'),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context)=>FeedbackPage()))},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('User Feedbacks'),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context)=>FeedbackPage()))},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()))},
          ),

        ],
      ),
    );
  }
}