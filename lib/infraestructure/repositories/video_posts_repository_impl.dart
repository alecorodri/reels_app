import 'package:reels_app/domain/datasources/video_posts_datasource.dart';
import 'package:reels_app/domain/repositories/video_posts_repository.dart';
import '../../domain/entities/videos_post.dart';

class VideoPostRepository extends VideoPostsRepository{

  final VideoPostDatasource videoPostDatasource;

  VideoPostRepository({required this.videoPostDatasource});


  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {

    return videoPostDatasource.getTrendingVideosByPage(page);
    
  }

}