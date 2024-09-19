import 'package:flutter/material.dart';
import 'package:silent_moon/colors.dart';

class VideosPage extends StatelessWidget {
  final String categoryId;

  VideosPage({required this.categoryId});

  @override
  Widget build(BuildContext context) {
    // For demonstration, using static list of videos
    final videos = [
      {'title': 'Video 1', 'thumbnail': 'assets/home/recommended2.png'},
      {'title': 'Video 2', 'thumbnail': 'assets/home/recommended1.png'},
      {'title': 'Video 1', 'thumbnail': 'assets/home/recommended2.png'},
      {'title': 'Video 2', 'thumbnail': 'assets/home/recommended1.png'},
      {'title': 'Video 1', 'thumbnail': 'assets/home/recommended2.png'},
      {'title': 'Video 2', 'thumbnail': 'assets/home/recommended1.png'},
      {'title': 'Video 1', 'thumbnail': 'assets/home/recommended2.png'},
      {'title': 'Video 2', 'thumbnail': 'assets/home/recommended1.png'},
      // Add more videos as needed
    ];

    return Scaffold(
      backgroundColor: AppColors.darkbg,
      appBar: AppBar(
        title: const Text('Category Videos'),
        backgroundColor: AppColors.darkbg,
        foregroundColor: Colors.white,
        // automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          final video = videos[index];
          return Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 15),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              child: Card(
                color: AppColors.darkbg,
                margin: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        video['thumbnail']!,
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Expanded(
                      child: Text(
                        video['title']!,
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
