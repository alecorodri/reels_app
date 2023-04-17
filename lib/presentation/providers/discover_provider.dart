



import 'package:flutter/material.dart';
import 'package:reels_app/domain/entities/videos_post.dart';

class DiscoverProvider extends ChangeNotifier {

  bool initialloading = true;
  List<VideoPost> videos = [];


  Future<void> loadNextPage() async {

    //TODO: load videos

    notifyListeners();
  }



}