import 'package:flutter/material.dart';
import 'package:youtube_clone_flutter/models/video.dart';

class VideoWidget extends StatelessWidget {
  final Video video;

  VideoWidget({
    this.video,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: <Widget>[
          Container(
            height: 200.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: video.thumbnail,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
            child: Row(
              children: <Widget> [
                Column(
                  children: <Widget>[
                    Container(
                      height: 35,
                      child: CircleAvatar(backgroundImage: video.user.profilePicture,),
                    ),
                    Container()
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(video.getVideoTitle(), style: TextStyle(fontSize: 20, fontFamily: "Helvetica", color: Color(0xFFFFFFFF), fontWeight: FontWeight.normal)),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Text(video.user.username, style: TextStyle(fontSize: 14, fontFamily: "Helvetica", color: Color(0xFF909090))),
                            Text(" ∙ ", style: TextStyle(fontSize: 14, fontFamily: "Helvetica", color: Color(0xFF909090))),
                            Text(video.getViewCount() + " views", style: TextStyle(fontSize: 14, fontFamily: "Helvetica", color: Color(0xFF909090))),
                            Text(" ∙ ", style: TextStyle(fontSize: 14, fontFamily: "Helvetica", color: Color(0xFF909090))),
                            Text(video.getTimeSinceUpload() + " ago", style: TextStyle(fontSize: 14, fontFamily: "Helvetica", color: Color(0xFF909090)),),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ]
            ),
          )
        ],
      ),
    );
  }
}