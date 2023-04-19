import 'package:flutter/material.dart';
import 'package:reels_app/presentation/widgets/video/video_background.dart';
import 'package:reels_app/shared/data/local_video_post.dart';
import 'package:video_player/video_player.dart';

class FullScreenPlayer extends StatefulWidget {

  final String videoUrl;
  final String caption;

  const FullScreenPlayer({
  Key? key, 
  required this.videoUrl, 
  required this.caption}) : super(key: key);

  @override
  State<FullScreenPlayer> createState() => _FullScreenPlayerState();
}

class _FullScreenPlayerState extends State<FullScreenPlayer> {

  late VideoPlayerController controller;
  
  @override
  void initState() {
    super.initState();

    controller = VideoPlayerController.asset(widget.videoUrl)
    ..setVolume(0)
    ..setLooping(true)
    ..play();
    
  }

  @override
  void dispose() {
    
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
      future: controller.initialize(),
      builder: (context, snapshot){
        if (snapshot.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator(strokeWidth: 2,),);
        }
        return AspectRatio(
          aspectRatio: controller.value.aspectRatio,
          child: Stack(
            children: [
              VideoPlayer(controller),

              VideoBackground(
                stops: const [0.8, 1.0],
              ),

              Positioned(
                bottom: 50,
                left: 20,
                child: _VideCaption(caption: widget.caption,),
                )
            ],
          ),
          );
        
      },
    );
  }
}


class _VideCaption extends StatelessWidget {

  final String caption;


  const _VideCaption({Key? key, required this.caption}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final titleStyle = Theme.of(context).textTheme.titleLarge;

    return SizedBox(
      width: size.width * 0.6,
      child: Text(caption, maxLines: 2, style: titleStyle,),
    );
  }
}