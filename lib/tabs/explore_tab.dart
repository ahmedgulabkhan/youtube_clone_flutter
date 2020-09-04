import 'package:flutter/material.dart';
import 'package:youtube_clone_flutter/tabs/home_tab.dart';

class ExploreTab extends StatefulWidget {
  @override
  _ExploreTabState createState() => _ExploreTabState();
}

class _ExploreTabState extends State<ExploreTab> {

  final HomeTab homeTab = new HomeTab();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF212121),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width/2 - 22,
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                    child: Text("Trending", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF909090),
                      ),
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2 - 22,
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                    child: Text("Music", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF909090)
                      ),
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                  )
                ],
              )
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width/2 - 22,
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                    child: Text("Gaming", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF909090),
                      ),
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2 - 22,
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                    child: Text("News", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF909090)
                      ),
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                  )
                ],
              )
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width/2 - 22,
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                    child: Text("Movies", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF909090),
                      ),
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2 - 22,
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                    child: Text("Fashion & Beauty", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF909090)
                      ),
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                  )
                ],
              )
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width/2 - 22,
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                      child: Text("Learning", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF909090),
                        ),
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                    ),
                  Container(
                    width: MediaQuery.of(context).size.width/2 - 22,
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                    child: Text("Live", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF909090)
                      ),
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                  )
                ],
              )
            ),

            SizedBox(height: 10.0),

            homeTab.getVideos()[8],
            homeTab.getVideos()[7],
            homeTab.getVideos()[6],
            homeTab.getVideos()[5],
            homeTab.getVideos()[4],
            homeTab.getVideos()[3],
            homeTab.getVideos()[2],
            homeTab.getVideos()[1],
          ],
        ),
      ),
    );
  }
}