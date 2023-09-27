import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled3/helpers/constants.dart';
class homeScreenTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NotesColor.whiteColor,
      body: Column(
        children: [
          Text('Home',
          style: TextStyle(
            fontFamily: 'poppins',
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            color: NotesColor.blackColor,
          ),),
          ListView.separated(
            itemBuilder: (BuildContext context,  index) {
              return Card(
                color: NotesColor.appColor,
                child: Container(
                  child: Row(
                  children: [
                    Image.asset('assets/images/bright.png',
                    height: 10.sp,
                      width: 10.sp,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text('English notes',
                            style:TextStyle(
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w700,
                              fontSize: 13.sp,
                              color: NotesColor.neutralLightColor,
                            ) ,
                            ),
                            Text('''Use of parts of speech and interjections..''',
                              style:TextStyle(
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 10.sp,
                                color: NotesColor.primaryLightColor,
                              ) ,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                    ),
                  ),
              );
            },
            itemCount: 2,
            separatorBuilder: (BuildContext context, int index) {
              return Divider();
            },
          ),
        ],
      ),
    );
  }

}