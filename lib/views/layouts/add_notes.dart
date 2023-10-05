import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled3/helpers/constants.dart';
import 'package:untitled3/widgets/custom_textField.dart';

import 'notes_screen.dart';

class homeNotesScreen extends StatefulWidget {
  @override
  State<homeNotesScreen> createState() => _homeNotesScreenState();
}

class _homeNotesScreenState extends State<homeNotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: NotesColor.whiteColor,
      appBar: AppBar(
        backgroundColor: NotesColor.whiteColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Add Notes',
          style: TextStyle(
            fontFamily: 'poppins',
            fontWeight: FontWeight.w600,
            fontSize: 21.sp,
            color: NotesColor.neutralBlackColor,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.sp),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.sp,
                    ),
                    Text(
                      'Name',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        color: NotesColor.pureBlackColor,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    customTextField(
                      hintText: 'Muhammad Ali Hassan Sheikh',
                      suffix: Icons.cancel_outlined,
                      color: NotesColor.baseWhiteColor,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Write your data here',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 9.sp,
                        color: NotesColor.blackColor,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    customTextField(
                      hintText:
                          'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
                      maxLines: 10,
                    //  this is done hope you get this
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15.sp),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 35.w, vertical: 10.sp),
                  decoration: BoxDecoration(
                    color: NotesColor.appColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => notesScreen()));
                      });
                    },
                    child: Text(
                      'Save',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: NotesColor.whiteColor,
                      ),
                    ),
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
