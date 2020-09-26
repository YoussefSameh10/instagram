
import 'package:flutter/material.dart';
import 'package:instagram/insta_list.dart';
import 'package:instagram/insta_story.dart';

class InstaHome extends StatefulWidget {
  @override
  _InstaHomeState createState() => _InstaHomeState();
}

class _InstaHomeState extends State<InstaHome> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InstaStory(),
        Divider(),
        InstaList()
      ],
    );
  }
}

