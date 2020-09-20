import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/insta_body.dart';

class InstaHome extends StatefulWidget {
  @override
  _InstaHomeState createState() => _InstaHomeState();
}

class _InstaHomeState extends State<InstaHome> {

  AppBar instaBar = AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    leading: Padding(
      padding: const EdgeInsets.only(left: 8),
      child: IconButton(
        icon: Icon(Icons.camera_alt),
        color: Colors.black,
        onPressed: () {},
      ),
    ),
    title: Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: 100),
        child: Image.asset('assets/insta_logo.png',),
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 8),
        child: IconButton(
          icon: Icon(Icons.send),
          color: Colors.black,
          onPressed: () {},
        ),
      )
    ],
  );
  BottomNavigationBar navBar = BottomNavigationBar(
    iconSize: 30,
    currentIndex: 0,
    selectedIconTheme: IconThemeData(color: Colors.black, opacity: 1),
    unselectedIconTheme: IconThemeData(color: Colors.black, opacity: 0.4),
    items: [
      BottomNavigationBarItem(
          icon: Icon(
            Icons.home,

          ),
          title: Text('')
      ),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.search,

          ),
          title: Text('')
      ),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.add_box,

          ),
          title: Text('')
      ),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,

          ),
          title: Text('')
      ),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.portrait,

          ),
          title: Text('')
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: instaBar,
      body: InstaBody(),
      bottomNavigationBar: navBar
    );
  }
}
