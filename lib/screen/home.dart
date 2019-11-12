import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.blue,
        middle: Text('Home'),
        leading: GestureDetector(
          child: Icon(Icons.navigate_before),
          onTap: () {},
        ),
      ),
      child: CupertinoActionSheet(
        title: Text('Choose'),
        message: Text('your option'),
        actions: <Widget>[
          CupertinoActionSheetAction(
            child: Text('hi'),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
