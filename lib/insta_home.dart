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

  Container nav = Container(
    height: 60,

    child: BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {},

          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black38,
              size: 30,
            ),
            onPressed: () {},

          ),
          IconButton(
            icon: Icon(
              Icons.add_box,
              color: Colors.black38,
              size: 30,
            ),
            onPressed: () {},

          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: Colors.black38,
              size: 30,
            ),
            onPressed: () {},

          ),
          IconButton(
            icon: Icon(
              Icons.account_box,
              color: Colors.black38,
              size: 30,
            ),
            onPressed: () {},

          ),
        ],
      ),

    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: instaBar,
      body: InstaBody(),
      bottomNavigationBar: nav
    );
  }
}
