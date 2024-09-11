import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silent_moon/colors.dart';

class MeditateDark extends StatelessWidget {
  const MeditateDark({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkbg,
      body: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          Text(
            'Meditate',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w700, fontSize: 30, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'we can learn how to recognize when our minds are doing their normal everyday acrobatics.',
              style: GoogleFonts.montserrat(
                  color: AppColors.subtext, fontSize: 17),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.meditatebg),
                      child: Image.asset('assets/Meditate/meditate1.png'),
                    ),
                    Text(
                      'All',
                      style: GoogleFonts.montserrat(),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.meditatebg),
                      child: Image.asset('assets/Meditate/meditate2.png'),
                    ),
                    Text(
                      'My',
                      style: GoogleFonts.montserrat(),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.meditatebg),
                      child: Image.asset('assets/Meditate/meditate3.png'),
                    ),
                    Text(
                      'Anxious',
                      style: GoogleFonts.montserrat(),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.meditatebg),
                      child: Image.asset('assets/Meditate/meditate4.png'),
                    ),
                    Text(
                      'Sleep',
                      style: GoogleFonts.montserrat(),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.meditatebg),
                      child: Image.asset('assets/Meditate/meditate5.png'),
                    ),
                    Text(
                      'Kids',
                      style: GoogleFonts.montserrat(),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: AppColors.meditateadbg,
                  borderRadius: BorderRadius.circular(10)),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/Meditate/meditatead.png',
                  ),
                  Positioned(
                    top: 30,
                    left: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Daily Thought',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        Text(
                          'MEDITATION  3-10 MIN',
                          style: GoogleFonts.montserrat(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: 30,
                      right: 30,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.play_arrow_rounded,
                              size: 30,
                            )),
                      ))
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.custom(
              gridDelegate: SliverWovenGridDelegate.count(
                crossAxisCount: 2,
                mainAxisSpacing: 0,
                crossAxisSpacing: 10,
                pattern: [
                  const WovenGridTile(1),
                  const WovenGridTile(6 / 7, crossAxisRatio: 1),
                ],
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                (context, index) {
                  return MeditateTile(index: index);
                },
                childCount: 6, // Number of tiles
              ),
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }
}

class MeditateTile extends StatelessWidget {
  final int index;

  const MeditateTile({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Different background colors for demonstration

    final images = [
      'assets/Meditate/calmn.png',
      'assets/Meditate/anxiety.png',
      'assets/Meditate/calmn.png',
      'assets/Meditate/anxiety.png',
    ];

    final textStyles = [
      const TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
      const TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
    ];

    final texts = [
      "7 days of Calm",
      "Anxiety Release",
      "7 days of Calm",
      "Reduce Anxiety",
    ];

    // Get color based on index
    final image = images[index % images.length];
    final textStyle = textStyles[index % textStyles.length];
    final text = texts[index % texts.length];

    return Stack(
      children: [
        // Background Container
        Padding(
          padding: const EdgeInsets.only(right: 10.0, left: 20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        // Positioned text
        Positioned(
          bottom: 30,
          left: 10,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ),
      ],
    );
  }
}
