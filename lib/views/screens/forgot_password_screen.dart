import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled3/widgets/custom_textField.dart';
import '../../helpers/constants.dart';
import 'create_newPassword_screen.dart';

class ForgotPassword extends StatefulWidget {
  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: NotesColor.whiteColor,
      appBar: AppBar(
        backgroundColor: NotesColor.whiteColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: NotesColor.blackColor,
            size: 15.sp,
          ),
        ),
        title: Text(
          'Back to Login',
          style: TextStyle(
            fontFamily: 'poppins',
            fontWeight: FontWeight.w500,
            fontSize: 13.sp,
            color: NotesColor.appColor,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.sp),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Illustration.png',
                    height: 40.h,
                    width: 70.w,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 27.sp,
                        color: NotesColor.neutralBlackColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 7.sp,),
                  Text(
                    'Insert your email address to receive a code for creating a new password',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 13.sp,
                      color: NotesColor.neutralBaseColor,
                    ),
                  ),
                  SizedBox(height: 20.sp,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email Address',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                        color: NotesColor.neutralBlackColor,
                      ),
                    ),
                  ),
                  customTextField(
                    validator: (value){
                      if(value!.isEmpty){
                        return "Please Enter the Email";
                      }
                      else{
                        return null;
                      }
                    },
                    hintText: 'anto_michael@gmail.com',),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15.sp),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.sp,horizontal: 30.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: NotesColor.appColor,
                ),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>createNewPassword()),
                      );
                    });
                  },
                  child: Text('Send Code',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 13.sp,
                      color: NotesColor.whiteColor,
                    ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
