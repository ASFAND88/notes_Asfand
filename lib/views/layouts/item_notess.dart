import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled3/helpers/constants.dart';
class NotesItem extends StatelessWidget {
  const NotesItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: NotesColor.appColor,
      child: Container(
        child: Row(
          children: [
            Image.asset('assets/images/bright.png',
              height: 10.sp,
              width: 10.sp,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text('English notes',
                      style:TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 13.sp,
                        color: NotesColor.neutralLightColor,
                      ) ,
                    ),
                    Text('''Use of parts of speech and interjections..''',
                      style:TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        color: NotesColor.primaryLightColor,
                      ) ,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}