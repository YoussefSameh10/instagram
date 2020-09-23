import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/shared/strings.dart';

class InstaList extends StatefulWidget {
  @override
  _InstaListState createState() => _InstaListState();
}

class _InstaListState extends State<InstaList> with SingleTickerProviderStateMixin {

  bool isFav0 = false;
  bool isFav1 = false;
  bool isFav2 = false;
  bool isFav3 = false;
  bool isFav4 = false;
  bool isFav5 = false;
  bool isFav6 = false;
  bool isFav7 = false;
  AnimationController controller ;
  Animation<Color> colorAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: Duration(milliseconds: 200),
        vsync: this
    );
    colorAnimation = TweenSequence(
      <TweenSequenceItem<Color>>[
        TweenSequenceItem<Color>(
          tween: ColorTween(begin: Colors.transparent, end: Colors.white),
          weight: 50
        ),
        TweenSequenceItem<Color>(
          tween: ColorTween(begin: Colors.white, end: Colors.transparent),
          weight: 50
        )
      ]
    ).animate(controller);

    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isFav0 = true;
        });
      }
      if (status == AnimationStatus.dismissed) {
        setState(() {
          isFav0 = false;
        });
      }
    });

  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {


    return Column(
      children: [
        Column(
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
            GestureDetector(
              onDoubleTap: () {
                setState(() {
                  if(!isFav0){
                    isFav0 = !isFav0;
                    controller.forward();
                  } else{
                    isFav0 = !isFav0;
                    controller.reverse();
                  }

                });
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/ice_cream.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                  AnimatedBuilder(
                    animation: controller,
                    builder: (BuildContext context, _) {
                      return Icon(
                        Icons.favorite,
                        size: 100,
                        color: colorAnimation.value,
                      );
                    },
                  )
                ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: isFav0
                            ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                            : FaIcon(
                          FontAwesomeIcons.heart,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            isFav0 = !isFav0;
                          });
                        },
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
        ),
        SizedBox(height: 20,),
        Column(
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
            GestureDetector(
              onDoubleTap: () {
                setState(() {
                  isFav1 = !isFav1;
                });
              },
              child: Image.asset(
                'assets/ice_cream.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: isFav1
                            ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                            : FaIcon(
                          FontAwesomeIcons.heart,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            isFav1 = !isFav1;
                          });
                        },
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
        ),
        SizedBox(height: 20,),
        Column(
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
            GestureDetector(
              onDoubleTap: () {
                setState(() {
                  isFav2 = !isFav2;
                });
              },
              child: Image.asset(
                'assets/ice_cream.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: isFav2
                            ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                            : FaIcon(
                          FontAwesomeIcons.heart,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            isFav2 = !isFav2;
                          });
                        },
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
        ),
        SizedBox(height: 20,),
        Column(
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
            GestureDetector(
              onDoubleTap: () {
                setState(() {
                  isFav3 = !isFav3;
                });
              },
              child: Image.asset(
                'assets/ice_cream.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: isFav3
                            ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                            : FaIcon(
                          FontAwesomeIcons.heart,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            isFav3 = !isFav3;
                          });
                        },
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
        ),
        SizedBox(height: 20,),
        Column(
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
            GestureDetector(
              onDoubleTap: () {
                setState(() {
                  isFav4 = !isFav4;
                });
              },
              child: Image.asset(
                'assets/ice_cream.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: isFav4
                            ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                            : FaIcon(
                          FontAwesomeIcons.heart,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            isFav4 = !isFav4;
                          });
                        },
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
        ),
        SizedBox(height: 20,),
        Column(
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
            GestureDetector(
              onDoubleTap: () {
                setState(() {
                  isFav5 = !isFav5;
                });
              },
              child: Image.asset(
                'assets/ice_cream.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: isFav5
                            ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                            : FaIcon(
                          FontAwesomeIcons.heart,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            isFav5 = !isFav5;
                          });
                        },
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
        ),
        SizedBox(height: 20,),
        Column(
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
            GestureDetector(
              onDoubleTap: () {
                setState(() {
                  isFav6 = !isFav6;
                });
              },
              child: Image.asset(
                'assets/ice_cream.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: isFav6
                            ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                            : FaIcon(
                          FontAwesomeIcons.heart,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            isFav6 = !isFav6;
                          });
                        },
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
        ),
        SizedBox(height: 20,),
        Column(
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
            GestureDetector(
              onDoubleTap: () {
                setState(() {
                  isFav7 = !isFav7;
                });
              },
              child: Image.asset(
                'assets/ice_cream.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: isFav7
                            ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                            : FaIcon(
                          FontAwesomeIcons.heart,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            isFav7 = !isFav7;
                          });
                        },
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
        ),
        SizedBox(height: 20,),
      ],
    );
  }
}
