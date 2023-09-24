import 'package:flutter/material.dart';
import 'package:untitled3/helpers/constants.dart';
import 'package:sizer/sizer.dart';

import 'login_screen.dart';

class onBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: NotesColor.appColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/Illustration.png',
                    height: 40.h,
                    width: 70.w,
                  ),
                  Text(
                    'Jot Down anything you want to achieve, today or in the future',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: 17.sp,
                      color: NotesColor.whiteColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,MaterialPageRoute(builder: (context)=>LoginScreen()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 7.sp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: NotesColor.whiteColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(),
                      Text(
                        'Let’s Get Started',
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp,
                          color: NotesColor.appColor,
                        ),
                      ),
                      // Spacer(),
                      Icon(
                        Icons.arrow_forward,
                        color: NotesColor.appColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
