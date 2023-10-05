import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled3/helpers/constants.dart';

import '../screens/newPassword_screen.dart';

class LayoutProfile extends StatefulWidget {
  @override
  State<LayoutProfile> createState() => _LayoutProfileState();
}

class _LayoutProfileState extends State<LayoutProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: NotesColor.whiteColor,
      appBar: AppBar(
        backgroundColor: NotesColor.whiteColor,
        elevation: 0,
        centerTitle:true,
        title: Text(
          'Profile',
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
          padding: EdgeInsets.symmetric(horizontal: 10.sp),
          child: Column(
            children: [
              SizedBox(height: 15.sp,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Michael Antonio',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w700,
                    color: NotesColor.neutralBlackColor,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/Icon.png',
                    height: 25.sp,
                    width: 25.sp,
                  ),
                  Text(
                    'anto_michael@gmail.com',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: NotesColor.neutralDarkColor,
                    ),
                  ),

                ],
              ),
              SizedBox(height: 15.sp,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: NotesColor.whiteColor,
                  border: Border.all(color: NotesColor.appColor),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/profile.png',
                      height: 25.sp,
                      width: 25.sp,
                    ),
                    Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: NotesColor.neutralDarkColor,
                      ),
                    ),
                  ],
                ),
              ),
                 SizedBox(height: 10.sp,),
                 Divider(
                  color: NotesColor.neutralLightColor,
                ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'APP SETTINGS',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 8.sp,
                    color: NotesColor.neutralDarkColor,
                  ),
                ),
              ),
              SizedBox(height: 10.sp,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>NewPassword())
                    );
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 7.sp),
                  decoration: BoxDecoration(
                    color: NotesColor.whiteColor,
                    border: Border.all(color: NotesColor.whiteColor),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/lock-closed.png',
                        height: 25.sp,
                        width: 25.sp,
                      ),
                      Text(
                        'Change Password',
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: NotesColor.neutralBlackColor,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_outlined,size: 12.sp,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.sp,),
              Divider(
                color: NotesColor.neutralLightColor,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 7.sp),
                decoration: BoxDecoration(
                  color: NotesColor.whiteColor,
                  border: Border.all(color: NotesColor.whiteColor),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/logout1.png',
                      height: 25.sp,
                      width: 25.sp,
                    ),
                    Text(
                      'Log Out',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: NotesColor.errorBaseColor,
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
