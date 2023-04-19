



import 'package:flutter/material.dart';
import 'package:reels_app/domain/entities/videos_post.dart';
import 'package:reels_app/infraestructure/models/local_video_model.dart';
import 'package:reels_app/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {

  // TODO: Repository, DataSource

  bool initialloading = true;
  List<VideoPost> videos = [];


  Future<void> loadNextPage() async {

    //await Future.delayed(const Duration(seconds: 1));

    //TODO: load videos

    final List<VideoPost> newVideos = videoPosts.map( (video) => LocalVideoModel.fromJsonMao(video).toVideoPostEntity() ).toList();

    videos.addAll(newVideos);
    initialloading = false;
    notifyListeners();
  }



}