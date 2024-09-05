import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silent_moon/colors.dart';

class Music extends StatelessWidget {
  const Music({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.audiobg,
      body: Stack(
        children: [
          // Background images positioned
          Positioned(
            bottom: -50,
            left: 0,
            child: Transform.rotate(
              angle: -56.5,
              child: Image.asset('assets/audio/bottom_left.png'),
            ),
          ),
          Positioned(
            bottom: -50,
            right: 0,
            child: Transform.rotate(
              angle: -56.5,
              child: Image.asset('assets/audio/bottom_right.png'),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Transform.rotate(
              angle: -56.5,
              child: Image.asset('assets/audio/top_left.png'),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Transform.rotate(
              angle: -56.5,
              child: Image.asset('assets/audio/top_right.png'),
            ),
          ),
          // Main content
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 50, right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    const Spacer(),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColors.iconbg,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_outline,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColors.iconbg,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.download,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Focus Attention',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        '7 DAYS OF CALM',
                        style: GoogleFonts.montserrat(
                          color: AppColors.subtext,
                        ),
                      ),
                    ],
                  ),
                ),
                // const SizedBox(height: 50),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.fast_rewind),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        color: AppColors.fontcolor,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.pause,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.fast_forward),
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.black,
                  thickness: 2,
                  indent: 30,
                  endIndent: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    children: [
                      Text(
                        '01:30',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '30:30',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:silent_moon/colors.dart';

// class Music extends StatelessWidget {
//   const Music({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.audiobg,
//       body: Column(
//         children: [
//           Container(
//             height: MediaQuery.of(context)
//                 .size
//                 .height, // Define the size of the container
//             width: MediaQuery.of(context).size.width,
//             child: Stack(
//               children: [
//                 Positioned(
//                     bottom: -50,
//                     child: Transform.rotate(
//                         angle: -56.5,
//                         child: Image.asset(
//                           'assets/audio/bottom_left.png',
//                         ))),
//                 Positioned(
//                     bottom: -50,
//                     right: 0,
//                     child: Transform.rotate(
//                         angle: -56.5,
//                         child: Image.asset(
//                           'assets/audio/bottom_right.png',
//                         ))),
//                 Positioned(
//                     child: Transform.rotate(
//                         angle: -56.5,
//                         child: Image.asset(
//                           'assets/audio/top_left.png',
//                         ))),
//                 Positioned(
//                     right: 0,
//                     child: Transform.rotate(
//                         angle: -56.5,
//                         child: Image.asset(
//                           'assets/audio/top_right.png',
//                         ))),
//                 Padding(
//                   padding:
//                       const EdgeInsets.only(left: 20.0, top: 50, right: 20),
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 50,
//                         width: 50,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(50),
//                             color: Colors.white),
//                         child: IconButton(
//                           onPressed: () {},
//                           icon: const Icon(
//                             Icons.close,
//                             color: Colors.black,
//                             size: 30,
//                           ),
//                         ),
//                       ),
//                       const Spacer(),
//                       Container(
//                         height: 50,
//                         width: 50,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(50),
//                             color: AppColors.iconbg),
//                         child: IconButton(
//                           onPressed: () {},
//                           icon: const Icon(
//                             Icons.favorite_outline,
//                             color: Colors.white,
//                             size: 30,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 20,
//                       ),
//                       Container(
//                         height: 50,
//                         width: 50,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(50),
//                             color: AppColors.iconbg),
//                         child: IconButton(
//                           onPressed: () {},
//                           icon: const Icon(
//                             Icons.download,
//                             color: Colors.white,
//                             size: 30,
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text('Focus Attention',
//                           style: GoogleFonts.montserrat(
//                               fontWeight: FontWeight.w800, fontSize: 30)),
//                       Text(
//                         '7 DAYS OF CALM',
//                         style: GoogleFonts.montserrat(color: AppColors.subtext),
//                       )
//                     ],
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 50,
//                 ),
//                 Positioned(
//                   top: 550,
//                   left: 140,
//                   child: Row(
//                     children: [
//                       IconButton(
//                           onPressed: () {},
//                           icon: const Icon(Icons.fast_rewind)),
//                       Container(
//                           height: 70,
//                           width: 70,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(70),
//                               color: AppColors.fontcolor),
//                           child: IconButton(
//                               onPressed: () {},
//                               icon: const Icon(
//                                 Icons.pause,
//                                 color: Colors.white,
//                               ))),
//                       IconButton(
//                           onPressed: () {},
//                           icon: const Icon(Icons.fast_forward)),
//                     ],
//                   ),
//                 ),
//                 const Align(
//                   alignment: Alignment(0, 0.5),
//                   child: Divider(
//                     color: Colors.black, // Set the color of the line
//                     thickness: 2, // Set the thickness of the line
//                     indent:
//                         30, // Optional: Add indentation to the start of the line
//                     endIndent:
//                         30, // Optional: Add indentation to the end of the line
//                   ),
//                 ),
//                 Align(
//                   alignment: const Alignment(0, 0.6),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 30.0),
//                     child: Row(
//                       children: [
//                         Text(
//                           '01:30',
//                           style: GoogleFonts.montserrat(
//                               fontWeight: FontWeight.w500),
//                         ),
//                         const Spacer(),
//                         Text(
//                           '30:30',
//                           style: GoogleFonts.montserrat(
//                               fontWeight: FontWeight.w500),
//                         )
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
