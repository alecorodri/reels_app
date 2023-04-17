
import 'package:reels_app/domain/entities/videos_post.dart';

class LocalVideoModel {

  final String caption;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.caption,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  factory LocalVideoModel.fromJsonMao(Map<String, dynamic> json) => LocalVideoModel(
    caption: json['name'] ?? 'no name', 
    videoUrl: json['videoUrl'], 
    likes: json['likes'] ?? 0, 
    views: json['views'] ?? 0
    );

  Map<String, dynamic> toJson() => {
    'name': caption,
    'videoUrl': videoUrl,
    'likes': likes,
    'views': views
  };

VideoPost toVideoPostEntity() => VideoPost(
  caption: caption, 
  videoUrl: videoUrl,
  likes: likes,
  views: views
  );

}