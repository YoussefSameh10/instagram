import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/shared/strings.dart';

class InstaStory extends StatefulWidget {
  @override
  _InstaStoryState createState() => _InstaStoryState();
}

class _InstaStoryState extends State<InstaStory> {

  Row storyText = Row(
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    children: [
      Text(
        'Stories',
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),
      ),

      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(
              Icons.play_arrow,
              size: 30,
            ),
            Text(
              'Watch All',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),

    ],
  );
  Container story = Container(
      height: 70,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, ind) {
            return Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(profilePic),
                      )
                  ),
                ),
                ind == 0
                    ? Positioned(
                  child: CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    radius: 10,
                    child: Icon(
                      Icons.add,
                      size: 20,
                    ),
                  ),
                )
                    : Container()
              ],
            );
          },
        ),
      )
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          //storyText,
          story
        ],
      ),
    );
  }
}
