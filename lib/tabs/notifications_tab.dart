import 'package:flutter/material.dart';

class NotificationsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 60.0),
        color: Color(0xFF212121),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.notifications, size: 120.0, color: Color(0xFF909090)),
            SizedBox(height: 25.0),
            Text("Your notifications live here", style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 5.0),
            Text("Subscribe to your favorite channels to get notified about their latest videos", style: TextStyle(color: Color(0xFF909090), fontSize: 16.0), textAlign: TextAlign.center,)
          ],
        ),
      )
    );
  }
}