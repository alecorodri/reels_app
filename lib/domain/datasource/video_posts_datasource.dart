
import 'package:reels_app/domain/entities/videos_post.dart';

abstract class VideoPostDatasource {


  Future<List<VideoPost>> getTrendingVideosByUser( String userID);

  Future<List<VideoPost>> getTrendingVideosByPage( int page);




}