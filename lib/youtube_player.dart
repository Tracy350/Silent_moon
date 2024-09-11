// import 'package:flutter/material.dart';
// import 'package:flick_video_player/flick_video_player.dart';
// import 'package:video_player/video_player.dart';

// class SamplePlayer extends StatefulWidget {
//   SamplePlayer({super.key});

//   @override
//   _SamplePlayerState createState() => _SamplePlayerState();
// }

// class _SamplePlayerState extends State<SamplePlayer> {
//   late FlickManager flickManager;
//   @override
//   void initState() {
//     super.initState();
//     flickManager = FlickManager(
//       videoPlayerController:
//           VideoPlayerController.networkUrl(Uri.parse("https://mazwai.com/videvo_files/video/free/2015-11/small_watermarked/9th-may_preview.webm"),
//           )
//     );
//   }

//   @override
//   void dispose() {
//     flickManager.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: FlickVideoPlayer(
//         flickManager: flickManager
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeWidget extends StatefulWidget {
  const YoutubeWidget({super.key});

  @override
  State<YoutubeWidget> createState() => _YoutubeWidgetState();
}

class _YoutubeWidgetState extends State<YoutubeWidget> {
  final videoURL = 'https://www.youtube.com/watch?v=YRJ6xoiRcpQ&pp=ygUQbWVkaXRhdGlvbiBtdXNpYw%3D%3D';
  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);

    _controller = YoutubePlayerController(
      initialVideoId: videoID!, flags: YoutubePlayerFlags(
        autoPlay: false
      )
    );

    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          YoutubePlayer(controller: _controller, showVideoProgressIndicator: true,)
        ],
      ),
    );
  }
}