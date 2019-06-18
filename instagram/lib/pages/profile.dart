import 'package:flutter/material.dart';
import 'package:instagram/models/global.dart';
import 'package:instagram/models/post.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            height: 100,
            color: Colors.red,

          ),
          Container(
            constraints: BoxConstraints.expand(height: MediaQuery.of(context).size.height- 168),
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  height: 250,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            child: CircleAvatar(backgroundImage: user.profilePicture,),
                          ),
                          Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(left: 68, right: 20),
                                    child: Column(
                                      children: <Widget>[
                                        Text('129', style: TextStyle(fontWeight: FontWeight.bold),),
                                        Text('posts')
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 20),
                                    child: Column(
                                      children: <Widget>[
                                        Text('129K', style: TextStyle(fontWeight: FontWeight.bold),),
                                        Text('followers')
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 20),
                                    child: Column(
                                      children: <Widget>[
                                        Text('129', style: TextStyle(fontWeight: FontWeight.bold),),
                                        Text('following')
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                      color: Colors.blue,
                                    ),
                                    margin: EdgeInsets.all(10),
                                    width: 120,
                                    height: 30,
                                    child: FlatButton(
                                      child: Text('Contact',style: TextStyle(color: Colors.white),),
                                      onPressed: () {

                                      },
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    height: 30,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                      border: Border.all(width: 1, color: Color(0xFFE7E7E7))
                                    ),
                                    child: FlatButton(
                                      child: Text('Edit Profile'),
                                      onPressed: () {
                                        
                                      },
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(user.username, style: textStyleBold,),
                              Text("I am a profile on instagram"),
                              InkWell(
                                child: new Text('my instagram'),
                                onTap: () => launch('https://www.instagram.com/kallehallden/')
                                ),
                            ],
                          ),
                          Container(

                          )
                        ],
                      )
                    ],
                  ),
                  color: Colors.white,
                ),
                Container(
                  height: 50,
                  color: Colors.blue,
                ),
                Column(
                  children: getPosts(),
                )
              ],
            ),
          )
        ],
      )
    );
  }


List<Widget> getPosts() {
  List<Widget> postRows = [];
  List<Widget> posts = [];
  int counter = 0;
  for (Post post in userPosts) {
    double marginLeft = 2;
    if (counter == 3) {
      marginLeft = 0;
    } else if (counter == 0) {
      marginLeft = 0;
    }
    posts.add(getPost(post, marginLeft));
        if (counter == 2) {
      postRows.add(Container(
        child: Row(
          children: posts,
        ),
      ));
      posts = [];
      counter = 0;
    } else {
      counter++;
    }
  }
  if (posts.length > 0) {
      postRows.add(Container(
        child: Row(
          children: posts,
        ),
      ));
  }
  return postRows;
}

Widget getPost(Post post, double margin) {
  return Container(
          margin: EdgeInsets.only(left: margin, bottom: 2),
              height: 125,
              width: 123.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: post.image,
                  fit: BoxFit.fill
                )
              ),
            );
}

}