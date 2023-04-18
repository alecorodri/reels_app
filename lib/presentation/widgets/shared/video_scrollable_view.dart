import 'package:flutter/material.dart';
import 'package:reels_app/domain/entities/videos_post.dart';
import 'package:reels_app/presentation/widgets/video_player/video_buttons.dart';

class VideoScrollableView extends StatelessWidget {

  final List<VideoPost> videos;
  

  const VideoScrollableView({Key? key, required this.videos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];

        return Stack(
          children: [
            // Video Player + gradiente

            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost)
              ),

          ],
        );

      },
    );
  }
}


