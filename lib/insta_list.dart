import 'package:flutter/material.dart';
import 'package:instagram/insta_post.dart';

class InstaList extends StatefulWidget {
  @override
  _InstaListState createState() => _InstaListState();
}

class _InstaListState extends State<InstaList> with SingleTickerProviderStateMixin {



  @override
  Widget build(BuildContext context) {


    return Column(
      children: [
        InstaPost(index: 0),
        SizedBox(height: 20,),
        InstaPost(index: 1),
        SizedBox(height: 20,),
        InstaPost(index: 2),
        SizedBox(height: 20,),
        InstaPost(index: 3),
        SizedBox(height: 20,),
        InstaPost(index: 4),
        SizedBox(height: 20,),
        InstaPost(index: 5),
        SizedBox(height: 20,),
        InstaPost(index: 6),
        SizedBox(height: 20,),
        InstaPost(index: 7),
        SizedBox(height: 20,),
      ],
    );
  }
}
