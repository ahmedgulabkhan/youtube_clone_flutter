import 'package:flutter/material.dart';
import 'package:youtube_clone_flutter/models/user.dart';

class UserProfile extends StatelessWidget {
  final User currentUser;
  
  UserProfile({
    this.currentUser
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          CircleAvatar(backgroundImage: currentUser.profilePicture, radius: 30,),
          Text(currentUser.username, style: TextStyle(fontSize: 14, fontFamily: "Helvetica", color: Color(0xFF909090)))
        ],
      ),
    );
  }
}