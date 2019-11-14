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
        leading: Icon(Icons.navigate_before),
        middle: Text('Home'),
        trailing: Icon(Icons.search),
        backgroundColor: Colors.blue,
      ),
      child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.phone), title: Text('Phone')),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble), title: Text('Chat')),
          ]),
          tabBuilder: (context, int i) {
            return Center(
              child: Text('$i'),
            );
          }),
    );
  }

  Widget childSomething() => Center(
        child: Text('something'),
      );
}
