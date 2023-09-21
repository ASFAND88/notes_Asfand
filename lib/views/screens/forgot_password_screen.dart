import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled3/widgets/custom_textField.dart';
import '../../helpers/constants.dart';
import 'create_newPassword_screen.dart';

class ForgotPassword extends StatelessWidget {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/Illustration.png',
              height: 40.h,
              width: 70.w,
            ),
            Text(
              'Forgot Password',
              style: TextStyle(
                fontFamily: 'poppins',
                fontWeight: FontWeight.w600,
                fontSize: 27.sp,
                color: NotesColor.neutralBlackColor,
              ),
            ),
            Text(
              'Insert your email address to receive a code for creating a new password',
              style: TextStyle(
                fontFamily: 'poppins',
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
                color: NotesColor.neutralBaseColor,
              ),
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
            customTextField(hintText: 'anto_michael@gmail.com',),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.sp,horizontal: 10.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: NotesColor.appColor,
              ),
              child: Center(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>createNewPassword()),
                    );
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
