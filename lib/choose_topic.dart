import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silent_moon/colors.dart';
import 'package:silent_moon/mybutton.dart';
import 'package:silent_moon/reminders.dart';

class ChooseTopic extends StatelessWidget {
  const ChooseTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Text(
                'What brings you',
                style: GoogleFonts.montserrat(
                  textStyle:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                ),
              ),
            ),
            Text(
              'to Silent Moon?',
              style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 25)),
            ),
            Text(
              'Choose a topic to focus on',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(color: AppColors.subtext, fontSize: 20),
              ),
            ),
            SizedBox(height: 20), // Added spacing
            Expanded(
              child: GridView.custom(
                gridDelegate: SliverWovenGridDelegate.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 10,
                  pattern: [
                    WovenGridTile(1),
                    WovenGridTile(6 / 7, crossAxisRatio: 1),
                  ],
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return CustomTile(index: index);
                  },
                  childCount: 8, // Number of tiles
                ),
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MyButton(
                color: AppColors.buttoncolor,
                text: 'NEXT',
                width: 70,
                height: 50,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Reminders()));
                }),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}

class CustomTile extends StatelessWidget {
  final int index;

  const CustomTile({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Different background colors for demonstration
    final colors = [
      AppColors.buttoncolor,
      AppColors.grid2,
      AppColors.grid3,
      AppColors.grid4,
      AppColors.grid5,
      AppColors.grid6,
      AppColors.grid7,
      AppColors.grid8,
    ];

    final images = [
      'assets/topicimg/image1.png',
      'assets/topicimg/image2.png',
      'assets/topicimg/image3.png',
      'assets/topicimg/image4.png',
      'assets/topicimg/image5.png',
      'assets/topicimg/image6.png',
      'assets/topicimg/image7.png',
      'assets/topicimg/image8.png',
    ];

    final textStyles = [
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
      TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
      TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
      TextStyle(
          color: Colors.yellow[300], fontSize: 20, fontWeight: FontWeight.w700),
    ];

    final texts = [
      "Reduce Stress",
      "Improve \n Performance",
      "Increase \n Happiness",
      "Reduce Anxiety",
      "Personal Growth",
      "Better Sleep",
      "Personal \n Growth",
      "Better Sleep",
    ];

    // Get color based on index
    final bgColor = colors[index % colors.length];
    final image = images[index % images.length];
    final textStyle = textStyles[index % textStyles.length];
    final text = texts[index % texts.length];

    return Stack(
      children: [
        // Background Container
        Container(
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.contain,
            ),
          ),
        ),
        // Positioned text
        Positioned(
          bottom: 10,
          left: 10,
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ],
    );
  }
}
