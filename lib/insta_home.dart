import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InstaHome extends StatefulWidget {
  @override
  _InstaHomeState createState() => _InstaHomeState();
}

class _InstaHomeState extends State<InstaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
    );
  }
}
