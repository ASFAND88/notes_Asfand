import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled3/helpers/constants.dart';


class customTextField extends StatelessWidget {
  String hintText ='Example: johndoe@gmail.com';
  bool? isHidden;
  TextInputType? keyboardType;
  VoidCallback? onTab;
  IconData? suffix;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType??TextInputType.emailAddress,
      obscureText: isHidden?? false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 10.sp,vertical: 8.sp),
        suffix: GestureDetector(
          onTap: onTab,
            child: Icon(suffix)),
        hintText: hintText,
        helperStyle: TextStyle(color:NotesColor.neutralBaseColor),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: NotesColor.neutralBaseColor),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: NotesColor.neutralBaseColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  customTextField({
    required this.hintText,
    this.isHidden,
    this.keyboardType,
    this.onTab,
    this.suffix,
  });
}