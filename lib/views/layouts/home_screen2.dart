import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled3/helpers/constants.dart';
class homeScreenTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NotesColor.whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            Text('Home',
            style: TextStyle(
              fontFamily: 'poppins',
              fontWeight: FontWeight.w600,
              fontSize: 20.sp,
              color: NotesColor.neutralBlackColor,
            ),),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: NotesColor.appColor,
              ),
              child: Row(
                children: [
                  Image.asset('assets/images/bright.png',
                  height: 25.sp,
                    width: 25.sp,
                  ),
                  Text('English notes',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 13.sp,
                    color: NotesColor.whiteColor,
                  ),
                  ),
                  Text('Use of parts of speech and interjections..',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 9.sp,
                      color: NotesColor.primaryLightColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: NotesColor.appColor,
              ),
              child: Row(
                children: [
                  Image.asset('assets/images/bright.png',
                    height: 25.sp,
                    width: 25.sp,
                  ),
                  Text('English notes',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: 13.sp,
                      color: NotesColor.whiteColor,
                    ),
                  ),
                  Text('Use of parts of speech and interjections..',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 9.sp,
                      color: NotesColor.primaryLightColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}