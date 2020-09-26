import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/shared/strings.dart';

class InstaPost extends StatefulWidget {
  int index;
  InstaPost({ this.index });
  @override
  _InstaPostState createState() => _InstaPostState();
}

class _InstaPostState extends State<InstaPost> with SingleTickerProviderStateMixin {

  List <bool>isFav = [false, false, false, false, false, false, false, false];
  AnimationController controller ;
  Animation<double> sizeAnimation;


  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: Duration(milliseconds: 500),
        vsync: this
    );
    sizeAnimation = TweenSequence(
        <TweenSequenceItem<double>>[
          TweenSequenceItem<double>(
              tween: Tween(begin: 0.0, end: 100.0),
              weight: 50
          ),
          TweenSequenceItem<double>(
              tween: Tween(begin: 100.0, end: 0.0),
              weight: 50
          )
        ]
    ).animate(CurvedAnimation(
        parent: controller,
        curve: Curves.easeIn
    ));

    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          //isFav0 = true;
        });
      }
      if (status == AnimationStatus.dismissed) {
        setState(() {
          //isFav0 = true;
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
              if(controller.isCompleted){
                controller.value = 0;
              }
              isFav[widget.index] = true;
              controller.forward();
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
                      size: sizeAnimation.value,
                      color: Colors.white,
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
                    icon: isFav[widget.index]
                        ? Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 30,
                    )
                        : FaIcon(
                      FontAwesomeIcons.heart,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        isFav[widget.index] = !isFav[widget.index];
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
    );
  }
}
