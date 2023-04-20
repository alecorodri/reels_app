import 'package:reels_app/domain/entities/videos_post.dart';

abstract class VideoPostsRepository {


  Future<List<VideoPost>> getFavoriteVideosByUser( String userID);

  Future<List<VideoPost>> getTrendingVideosByPage( int page);




}