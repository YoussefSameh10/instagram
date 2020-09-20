import 'package:flutter/material.dart';
import 'package:instagram/shared/strings.dart';

class InstaList extends StatefulWidget {
  @override
  _InstaListState createState() => _InstaListState();
}

class _InstaListState extends State<InstaList> {
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(profilePic),
          ),
        )
      ],
    );
  }
}
