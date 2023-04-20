
import 'package:flutter/material.dart';
import 'package:reels_app/domain/entities/videos_post.dart';
import 'package:reels_app/infraestructure/repositories/video_posts_repository_impl.dart';


class DiscoverProvider extends ChangeNotifier {

  final VideoPostRepositoryImpl videoPostRepository;

  

  bool initialloading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({required this.videoPostRepository});


  Future<void> loadNextPage() async {

    //await Future.delayed(const Duration(seconds: 1));

    //final List<VideoPost> newVideos = videoPosts.map( (video) => LocalVideoModel.fromJsonMao(video).toVideoPostEntity() ).toList();

    final newVideos = await videoPostRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    initialloading = false;
    notifyListeners();
  }



}