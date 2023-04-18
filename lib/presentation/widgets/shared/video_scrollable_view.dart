import 'package:flutter/material.dart';
import 'package:reels_app/domain/entities/videos_post.dart';

class VideoScrollableView extends StatelessWidget {

  final List<VideoPost> videos;
  

  const VideoScrollableView({Key? key, required this.videos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      children: [
          Container(color: Colors.red),
          Container(color: Colors.blue),
          Container(color: Colors.teal),
          Container(color: Colors.yellow),
      ],
    );
  }
}


