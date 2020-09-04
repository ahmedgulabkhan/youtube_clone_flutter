import 'package:flutter/material.dart';
import 'package:youtube_clone_flutter/models/user.dart';
import 'package:youtube_clone_flutter/pages/user_profile_page.dart';
import 'package:youtube_clone_flutter/tabs/home_tab.dart';
import 'package:youtube_clone_flutter/tabs/notifications_tab.dart';
import 'package:youtube_clone_flutter/tabs/explore_tab.dart';
import 'package:youtube_clone_flutter/tabs/library_tab.dart';
import 'package:youtube_clone_flutter/tabs/subscriptions_tab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final User currentUser = new User(username: "Sam wilson", profilePicture: AssetImage("assets/9.jpg"));

  List<Widget> tabsList = [
    Tab(
      icon: Icon(Icons.home),
      text: "Home",
    ),
    Tab(
      icon: Icon(Icons.explore),
      text: "Explore",
    ),
    Tab(
      icon: Icon(Icons.subscriptions),
      text: "Subscriptions",
    ),
    Tab(
      icon: Icon(Icons.notifications),
      text: "Notifications",
    ),
    Tab(
      icon: Icon(Icons.video_library),
      text: "Library",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 35.0,
                    child: Image.asset("assets/logo.png")
                  ),
                  SizedBox(width: 5.0,),
                  Text("YouTube", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)), 
                ],
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Icon(Icons.videocam),
                    SizedBox(width: 15.0,),
                    Icon(Icons.search),
                    SizedBox(width: 15.0,),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserProfilePage(currentUser: currentUser)));
                      },
                      child: CircleAvatar(backgroundImage: currentUser.profilePicture, radius: 20,)
                    ),
                ],
              )
            ],
          ),
          backgroundColor: Color(0xFF282828),
        ),
        body: TabBarView(
          children: [
            HomeTab(),
            ExploreTab(),
            SubscriptionsTab(),
            NotificationsTab(),
            LibraryTab()
          ],
        ),
        bottomNavigationBar: TabBar(
          labelStyle: TextStyle(fontSize: 7, fontFamily: "Helvetica"),
          tabs: tabsList,
          labelColor: Color(0xFFFFFFFF),
          unselectedLabelColor: Color(0xFF909090),
          indicatorColor: Colors.transparent,
        ),
        backgroundColor: Color(0xFF282828),
      ),
    );
  }
}