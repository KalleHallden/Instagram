import 'package:flutter/material.dart';
import 'user.dart';
import 'post.dart';
import 'comment.dart';
import 'appbar.dart';


TextStyle textStyle = new TextStyle(fontFamily: 'Gotham');
TextStyle textStyleBold = new TextStyle(fontFamily: 'Gotham', fontWeight: FontWeight.bold, color: Colors.black);
TextStyle textStyleLigthGrey = new TextStyle(fontFamily: 'Gotham', color: Colors.grey);
// AppbarParams appBarParams = new AppbarParams("Instagram", []);

Post post1 = new Post(new AssetImage('lib/assets/photo_1.jpeg'), user, "My first post", DateTime.now(), [follower1, follower2, follower3], [], false, false);
final User user = new User('kallehallden', AssetImage('lib/assets/my_profile.jpg'), [
  follower1,
  follower2,
  follower3
], [
  follower1,
  follower2,
  follower3
], [], [], false);
User follower1 = new User('the_rock', AssetImage('lib/assets/follower3.jpeg'), [], [], [], [], true);
User follower2 = new User('miley_cyrus', AssetImage('lib/assets/follower2.jpg'), [], [], [], [], false);
User follower3 = new User('kim_k', AssetImage('lib/assets/their_profile.jpeg'), [], [], [], [], true);
List<Post> userPosts = [
  new Post(new AssetImage('lib/assets/photo_1.jpeg'), user, "My first post", DateTime.now(), [follower1, follower2, follower3], [
    new Comment(follower1, "This was amazing!", DateTime.now(), false),
    new Comment(follower2, "Cool one", DateTime.now(), false)
  ], false, false),
  new Post(new AssetImage('lib/assets/post2.jpg'), user, "My first post", DateTime.now(), [follower1, follower2, follower3], [
    new Comment(follower3, "This was super cool!", DateTime.now(), false),
    new Comment(follower1, "I can't believe it's not butter!", DateTime.now(), false),
    new Comment(user, "I know rite!", DateTime.now(), false)
  ], false, false),
 
 ];

 String title = "Instagram";