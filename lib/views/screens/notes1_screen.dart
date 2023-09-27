import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled3/helpers/constants.dart';
import 'package:untitled3/views/screens/notes2_screen.dart';

import '../layouts/bottom_navigation.dart';
import '../layouts/home_screen2.dart';

class notesScreenOne extends StatefulWidget {
  @override
  State<notesScreenOne> createState() => _notesScreenOneState();
}

class _notesScreenOneState extends State<notesScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: NotesColor.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              Center(
                child: Text(
                  'Add Notes',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 21.sp,
                    color: NotesColor.neutralBlackColor,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text(
                'Name',
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 10.sp,
                  color: NotesColor.pureBlackColor,
                ),
              ),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.sp),
                decoration: BoxDecoration(
                  color: NotesColor.baseWhiteColor,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: NotesColor.baseWhiteColor,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Muhammad Ali Hassan Sheikh',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w300,
                        fontSize: 8.sp,
                        color: NotesColor.blackColor,
                      ),
                    ),
                    Icon(Icons.cancel_outlined),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Text(
                'Write your data here',
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 9.sp,
                  color: NotesColor.blackColor,
                ),
              ),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 7.sp),
                height: 180.sp,
                decoration: BoxDecoration(
                  color: NotesColor.baseWhiteColor,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: NotesColor.baseWhiteColor,
                  ),
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '''
                  xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                  xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                  xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
                          ''',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 8.sp,
                      color: NotesColor.blackColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Center(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.sp,horizontal: 35.sp),
                  decoration: BoxDecoration(
                    color: NotesColor.appColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>BottomNavigation()));
                      });
                    },
                    child: Text('Save',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: NotesColor.whiteColor,
                      ),),
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
