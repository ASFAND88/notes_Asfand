import 'package:flutter/material.dart' '';
import 'package:sizer/sizer.dart';
import 'package:untitled3/views/layouts/item_notess.dart';

import '../../helpers/constants.dart';

class LayoutHome extends StatelessWidget {
  List<Map<String,String>> notesList=[];
  @override
  Widget build(BuildContext context) {
    return notesList.isNotEmpty
      ?Scaffold(
      appBar: AppBar(
        backgroundColor: NotesColor.whiteColor,
        elevation: 0,
        title: Text('Home',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            fontFamily: 'poppins',
            color: NotesColor.whiteColor,
          ),),
      ),
      backgroundColor: NotesColor.whiteColor,
      body: ListView.separated(
        itemBuilder: (BuildContext context,  index) {
          return NotesItem();
        },
        itemCount: 2,
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
      ),
    )
    :Scaffold(
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
              SizedBox(height: 12.sp,),
              Align(
                alignment: Alignment.center,
                child: Text(
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

