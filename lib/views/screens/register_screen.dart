import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled3/helpers/constants.dart';
import 'package:untitled3/widgets/custom_textField.dart';

import 'forgot_password_screen.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget{
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isHidden = false;

  IconData suffix = Icons.visibility_outlined;

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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.sp),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Register',
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 30.sp,
                          color: NotesColor.neutralBlackColor,
                        ),
                      ),
                      Text(
                        'And start taking notes',
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,
                          color: NotesColor.neutralDarkColor,
                        ),
                      ),
                      Text(
                        'Full Name',
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp,
                          color: NotesColor.neutralBlackColor,
                        ),
                      ),
                      customTextField(
                        hintText: 'Example: John Doe',
                        keyboardType: TextInputType.text,
                      ),
                      Text(
                        'Email Address',
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp,
                          color: NotesColor.neutralBlackColor,
                        ),
                      ),
                      customTextField(
                        hintText: 'Example: johndoe@gmail.com',
                        keyboardType: TextInputType.emailAddress,
                      ),
                      Text(
                        'password',
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp,
                          color: NotesColor.neutralBlackColor,
                        ),
                      ),
                      // SizedBox(height: 10,),
                      customTextField(
                        hintText: '********',
                        isHidden: isHidden,
                        suffix: suffix,
                        onTab: () {
                          setState(() {
                            isHidden = !isHidden;
                          });
                          isHidden == true
                              ? suffix = Icons.visibility_off_outlined
                              : Icons.visibility_outlined;
                        },
                      ),
                      Text(
                        'Retype password',
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp,
                          color: NotesColor.neutralBlackColor,
                        ),
                      ),
                      customTextField(
                        hintText: '********',
                        isHidden: isHidden,
                        suffix: suffix,
                        onTab: () {
                          setState(() {
                            isHidden = !isHidden;
                          });
                          isHidden == true
                              ? suffix = Icons.visibility_off_outlined
                              : Icons.visibility_outlined;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10.sp),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: NotesColor.appColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ForgotPassword()),
                                  );
                                });
                              },
                              child: Text(
                                'Register',
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.sp,
                                ),
                              ),
                            ),
                            // Spacer(),
                            Icon(
                              Icons.arrow_forward,
                              color: NotesColor.whiteColor,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: NotesColor.neutralLightColor,
                              indent: 50.sp,
                              endIndent: 15.sp,
                            ),
                          ),
                          Text('or'),
                          Expanded(
                            child: Divider(
                              color: NotesColor.neutralLightColor,
                              indent: 15.sp,
                              endIndent: 50.sp,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 7.sp),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: NotesColor.whiteColor,
                          border: Border.all(
                            color: NotesColor.neutralBaseColor,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/pngimg.com - google_PNG19635.png',
                              height: 30.sp,
                              width: 30.sp,
                            ),
                            SizedBox(
                              width: 10.sp,
                            ),
                            Text(
                              'Register with Google',
                              style: TextStyle(
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 13.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 13.sp,
                      color: NotesColor.appColor,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      'Login Here',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                        color: NotesColor.appColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
