import 'dart:ui';

import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(
      ),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Gmail'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/gmail1.jpg'),
            Image.asset('images/gmail2.jpg'),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.blueAccent
              ),
              accountName: Text('khandaker Jahid'),
              accountEmail: Text('khandaker@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/human.jpg'),
              ),
            ),
            ListTile(
              title: Text('Inbox'),
              onTap: (){},
              leading: Icon(Icons.inbox),
            ),
            ListTile(
              title: Text('Starred'),
              onTap: (){},
              leading: Icon(Icons.star),
            ),
            ListTile(
              title: Text('Snoozed'),
              onTap: (){},
              leading: Icon(Icons.access_time_filled),
            ),
            ListTile(
              title: Text('sent'),
              onTap: (){},
              leading: Icon(Icons.send),
            ),
            ListTile(
              title: Text('Drafts'),
              onTap: (){},
              leading: Icon(Icons.drafts),
            ),
            ListTile(
              title: Text('Important'),
              onTap: (){},
              leading: Icon(Icons.approval_rounded),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.purple
              ),
              accountName: Text('Switch account.'),
              accountEmail: Text('Instantly switch your account to other account.'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/gopal.jpg'),
              ),
            ),
            ListTile(
              title: Text('munembhai@hotmail.com'),
              onTap: (){},
              leading: Icon(Icons.add_reaction),
            ),
            ListTile(
              title: Text('nadimkhan@hotmail.com'),
              onTap: (){},
              leading: Icon(Icons.attach_email_rounded),
            ),
            ListTile(
              title: Text('bulbulhasan.12455@hotmail.com'),
              onTap: (){},
              leading: Icon(Icons.threesixty_sharp),
            ),
          ],
        ),
      ),
    );
  }
}