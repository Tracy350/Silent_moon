import 'package:flutter/material.dart';
import 'package:silent_moon/colors.dart';
import 'package:silent_moon/dark_mode/doctrine_details.dart';
import 'package:silent_moon/widget/doctrine_widget.dart';

class DoctrineList extends StatelessWidget {
  final List<Map<String, String>> doctrines = [
    {
      'title': 'The Holy Bible',
      'details': 'That the Holy Bible, consisting of 39 books of the Old Testament and 27 books of the New Testament, is the inspired Word of ...',
    },
    {
      'title':'Total Depravity, Sinfulness and Guilt of All Men',
      'details': 'The total depravity, sinfulness and guilt of all men since the Fall...'
    },
    {
      'title': 'Repentance',
      'details': 'That Repentance is a complete turning away from all sins and its deceitful pleasures and that...'
    },
  ];
   DoctrineList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.darkbg,body: Padding(padding: EdgeInsets.only(top: 50,left: 15,right: 15), child: ListView.builder(itemCount: doctrines.length,itemBuilder: (context, index){
        final doctrine = doctrines[index]; return Column(children: [GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> DoctrineDetails()));
          },child: DoctrineWidget(doctrinesubtext: doctrine['details']?? '', doctrinetitle: doctrine['title']??''),
        ), SizedBox(height: 20,)],);
      },),),
    );
  }
}