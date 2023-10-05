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
  final _formKey=GlobalKey<FormState>();

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
                  child: Form(
                    key: _formKey,
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
                        SizedBox(height: 10.sp,),
                        Text(
                          'Full Name',
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp,
                            color: NotesColor.neutralBlackColor,
                          ),
                        ),
                        SizedBox(height: 5.sp,),
                        customTextField(
                          validator: (value){
                            if(value!.isEmpty){
                              return "Please Enter the Name";
                            }
                            // else if(value!=RegExp(r'^[a-zA-Z]+$')){
                            //   return 'please enter the correct name';
                            // }
                            else{
                              return null;
                            }
                          },
                          hintText: 'Example: John Doe',
                          keyboardType: TextInputType.text,
                        ),
                        SizedBox(height: 10.sp,),
                        Text(
                          'Email Address',
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp,
                            color: NotesColor.neutralBlackColor,
                          ),
                        ),
                        SizedBox(height: 5.sp,),
                        customTextField(
                          validator: (value){
                            if(value!.isEmpty){
                              return "Please Enter the Email";
                            }
                            else{
                              return null;
                            }
                          },
                          hintText: 'Example: johndoe@gmail.com',
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(height: 10.sp,),
                        Text(
                          'password',
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp,
                            color: NotesColor.neutralBlackColor,
                          ),
                        ),
                        SizedBox(height: 5.sp,),
                        customTextField(
                          validator: (value){
                            if(value!.isEmpty){
                              return "Please Enter the Password";
                            }
                            else if(value.length<8){
                              return "Password should be greater than 8 digits";
                            }
                            else{
                              return null;
                            }
                          },
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
                        SizedBox(height: 10.sp,),
                        Text(
                          'Retype password',
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp,
                            color: NotesColor.neutralBlackColor,
                          ),
                        ),
                        SizedBox(height: 5.sp,),
                        customTextField(
                          validator: (value){
                            if(value!.isEmpty){
                              return "Please Enter the Password";
                            }
                            else if(value.length<8){
                              return "Password should be greater than 8 digits";
                            }
                            // else if(value==value){
                            //   return "Password successfully confirmed.";
                            // }
                            else{
                              // return "Passwords do not match. Please retype.";
                              return null;
                            }
                          },
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
                                  if(_formKey.currentState!.validate()){
                                    setState(() {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => ForgotPassword()),
                                      );
                                    });
                                  }
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
                        SizedBox(height: 10.sp,),
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
                        SizedBox(height: 10.sp,),
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
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
