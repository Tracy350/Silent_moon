import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeWidget extends StatefulWidget {
  const YoutubeWidget({super.key});

  @override
  State<YoutubeWidget> createState() => _YoutubeWidgetState();
}

class _YoutubeWidgetState extends State<YoutubeWidget> {
  final videoURL =
      'https://www.youtube.com/watch?v=YRJ6xoiRcpQ&pp=ygUQbWVkaXRhdGlvbiBtdXNpYw%3D%3D';
  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);

    _controller = YoutubePlayerController(
        initialVideoId: videoID!, flags: YoutubePlayerFlags(autoPlay: false));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Medititation Music',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '9,232,342 views',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.red),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                              Spacer(),
                              Text(
                                'Like',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.download,
                                color: Colors.white,
                              ),
                              Spacer(),
                              Text(
                                'Download',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  // Comment section with a border
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey, width: 2),
                    ),
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.comment, color: Colors.grey),
                              SizedBox(
                                  width: 10), // Space between icon and text
                              Text(
                                'Comment',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Divider(
                            color: Colors.black,
                            thickness: 1,
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'No comments yet',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('More Videos',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 25)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          'assets/youtubeimg/meditationimg.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        '7 minute meditation to start your day',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20),
                      ),
                      Text(
                        'Melvina Appiah',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          'assets/youtubeimg/meditationimg.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        '7 minute meditation to start your day',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20),
                      ),
                      Text(
                        'Melvina Appiah',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
