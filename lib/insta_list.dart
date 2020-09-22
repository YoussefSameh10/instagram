import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/shared/strings.dart';

class InstaList extends StatefulWidget {
  @override
  _InstaListState createState() => _InstaListState();
}

class _InstaListState extends State<InstaList> {

  Column post = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(profilePic),
        ),
        title: Text(
          'Joe',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        trailing: Icon(
          Icons.more_vert,
          color: Colors.grey[700],
        ),
      ),
      Image.asset(
        'assets/ice_cream.jpg',
        fit: BoxFit.fitWidth,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Row(
          children: [
            Row(
              children: [
                IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.heart,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.comment,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.paperPlane,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.bookmark,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Text(
          'Liked by x, y and 123 others',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8, left: 16),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(profilePic),
            ),
            SizedBox(width: 8,),
            Text(
              'Add a comment...',
              style: TextStyle(
                  color: Colors.black38,
                  fontSize: 18
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8, left: 16),
        child: Text(
          '2 Days Ago',
          style: TextStyle(
              fontSize: 14,
              color: Colors.black38
          ),
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        post,
        SizedBox(height: 20,),
        post,
        SizedBox(height: 20,),
        post,
        SizedBox(height: 20,),
        post,
        SizedBox(height: 20,),
        post,
        SizedBox(height: 20,),
        post,
        SizedBox(height: 20,),
        post,
        SizedBox(height: 20,),
      ],
    );
  }
}
