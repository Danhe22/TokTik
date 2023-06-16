

import 'package:flutter/material.dart';
import 'package:toktik/config/domain/entities/video_post.dart';
import 'package:toktik/config/domain/repositories/video_posts_repository.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {

  final VideoPostRepository videosRepositoy;

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({
    required this.videosRepositoy
  });


  Future<void> loadNextPage() async {

    final newVideos = await videosRepositoy.getTrendingVideosByPage(1);
    
    videos.addAll( newVideos );
    initialLoading = false;
    notifyListeners();
  }


}