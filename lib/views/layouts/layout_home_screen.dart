import 'package:flutter/material.dart' '';
import 'package:sizer/sizer.dart';

import '../../helpers/constants.dart';

class LayoutHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.sp,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Illustration (1).png',
                height: 40.h,
                width: 70.w,
              ),
              SizedBox(height: 15.sp,),
              Text(
                'Start Your Journey',
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 21.sp,
                  color: NotesColor.neutralBlackColor,
                ),
              ),
              SizedBox(height: 15.sp,),
              Text(
                '''Every big step start with small step.
                 Notes your first idea and start
               your journey!''',
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 11.sp,
                  color: NotesColor.neutralDarkColor,
                ),
              ),
              Image.asset(
                'assets/images/Arrow.png',
                height: 20.h,
                width: 70.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
