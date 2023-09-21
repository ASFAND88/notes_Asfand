import 'package:flutter/material.dart';
import 'package:untitled3/helpers/constants.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled3/views/screens/register_screen.dart';

import '../../widgets/custom_textField.dart';
import 'forgot_password_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isHidden = false;
  IconData suffix = Icons.visibility_outlined;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: NotesColor.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.sp),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Let’s Login',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 30.sp,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'And notes your idea',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 13.sp,
                        color: NotesColor.neutralDarkColor,
                      ),
                    ),
                    SizedBox(
                      height: 20,
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
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Password',
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
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,MaterialPageRoute(builder: (context)=>ForgotPassword()),
                        );
                      },
                      child: Text(
                        'Forget Password',
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp,
                          color: NotesColor.appColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,MaterialPageRoute(builder: (context)=>RegisterScreen()),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10.sp),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: NotesColor.appColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(),
                            Text(
                              'Login',
                              style: TextStyle(
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 13.sp,
                                color: NotesColor.whiteColor,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: NotesColor.whiteColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
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
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 7.sp),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: NotesColor.whiteColor,
                          border: Border.all(
                            color: NotesColor.neutralBaseColor,
                          )),
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
                            'Login with Google',
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
              Align(
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Text(
                      'Don’t have any account?',
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
                          context,MaterialPageRoute(builder: (context)=>RegisterScreen()),
                        );
                      },
                      child: Text(
                        ' Register here',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
