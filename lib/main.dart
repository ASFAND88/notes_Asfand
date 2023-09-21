import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled3/views/screens/create_newPassword_screen.dart';
import 'package:untitled3/views/screens/forgot_password_screen.dart';
import 'package:untitled3/views/screens/login_screen.dart';
import 'package:untitled3/views/screens/on_boarding_screen.dart';
import 'package:untitled3/views/screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: onBoarding(),
      // routes: {
      //   '/loginScreen':(context)=>LoginScreen(),
      //   '/RegisterScreen':(context)=>RegisterScreen(),
      //   '/ForgetPassword':(context)=>ForgotPassword(),
      // },
      // home: createNewPassword(),
    ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
