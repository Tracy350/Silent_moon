import 'package:flutter/material.dart';
import 'package:silent_moon/colors.dart';
import 'package:silent_moon/dark_mode/dark_category_videos.dart';

class Category {
  final String id;
  final String name;
  final String thumbnailUrl;

  Category({required this.id, required this.name, required this.thumbnailUrl});
}

class CategoriesPage extends StatelessWidget {
  final List<Category> categories = [
    Category(
      id: '1',
      name: 'Nature',
      thumbnailUrl: 'assets/home/recommended1.png',
    ),
    Category(
      id: '2',
      name: 'Technology',
      thumbnailUrl: 'assets/home/recommended2.png',
    ),
    Category(
      id: '3',
      name: 'Nature',
      thumbnailUrl: 'assets/home/recommended2.png',
    ),
    Category(
      id: '4',
      name: 'Technology',
      thumbnailUrl: 'assets/home/recommended1.png',
    ),
    Category(
      id: '5',
      name: 'Nature',
      thumbnailUrl: 'assets/home/recommended2.png',
    ),
    Category(
      id: '6',
      name: 'Technology',
      thumbnailUrl: 'assets/home/recommended1.png',
    ),
    // Add more categories as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkbg,
      appBar: AppBar(
        title: const Text('Choose Category'),
        backgroundColor: AppColors.darkbg,
        foregroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => VideosPage(categoryId: category.id),
                ),
              );
            },
            child: Card(
              color: AppColors.darkbg,
              elevation: 4,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(color: Colors.grey),
                              left: BorderSide(color: Colors.grey),
                              right: BorderSide(color: Colors.grey)),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            category.thumbnailUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      category.name,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
