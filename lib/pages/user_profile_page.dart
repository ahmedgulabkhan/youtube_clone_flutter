import 'package:flutter/material.dart';
import 'package:youtube_clone_flutter/models/user.dart';

class UserProfilePage extends StatelessWidget {

  final User currentUser;

  UserProfilePage({
    this.currentUser
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.close, color: Colors.white)
        ),
        title: Text('Account', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF282828),
      ),
      body: Container(
        color: Color(0xFF282828),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(backgroundImage: currentUser.profilePicture, radius: 30),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(currentUser.username, style: TextStyle(color: Colors.white, fontSize: 16.0)),
                      SizedBox(height: 5.0),
                      Text('samwilson@gmail.com', style: TextStyle(color: Colors.white, fontSize: 16.0)),
                      SizedBox(height: 5.0),
                      Text('Manage your Google Account', style: TextStyle(color: Colors.lightBlue))
                    ],
                  )
                ],
              ),
            ),

            Divider(color: Colors.white),

            ListTile(
              leading: Icon(Icons.account_box, color: Color(0xFF909090)),
              title: Text('Your channel', style: TextStyle(color: Colors.white)),
            ),

            ListTile(
              leading: Icon(Icons.settings_applications, color: Color(0xFF909090)),
              title: Text('Youtube Studio', style: TextStyle(color: Colors.white)),
            ),

            ListTile(
              leading: Icon(Icons.access_time, color: Color(0xFF909090)),
              title: Text('Time watched', style: TextStyle(color: Colors.white)),
            ),

            ListTile(
              leading: Icon(Icons.video_library, color: Color(0xFF909090)),
              title: Text('Get YouTube Premium', style: TextStyle(color: Colors.white)),
            ),

            ListTile(
              leading: Icon(Icons.monetization_on, color: Color(0xFF909090)),
              title: Text('Paid memberships', style: TextStyle(color: Colors.white)),
            ),

            ListTile(
              leading: Icon(Icons.supervisor_account, color: Color(0xFF909090)),
              title: Text('Switch account', style: TextStyle(color: Colors.white)),
            ),

            ListTile(
              leading: Icon(Icons.security, color: Color(0xFF909090)),
              title: Text('Your data in YouTube', style: TextStyle(color: Colors.white)),
            ),

            Divider(color: Colors.white),

            ListTile(
              leading: Icon(Icons.settings, color: Color(0xFF909090)),
              title: Text('Settings', style: TextStyle(color: Colors.white)),
            ),

            ListTile(
              leading: Icon(Icons.help, color: Color(0xFF909090)),
              title: Text('Help & feedback', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}