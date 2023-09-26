import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled3/helpers/constants.dart';
import 'package:untitled3/widgets/custom_textField.dart';
class LayoutChatsScreen extends StatelessWidget{
  List<String> name=['Asfand','Ahmed','Ramzan','Faiz',];
  List<String> image=['Asfand','Ahmed','Ramzan','Faiz',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: NotesColor.whiteColor,
      body: ListView.separated(itemBuilder: (BuildContext context,  index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage:NetworkImage('https://unsplash.com/photos/_Fqoswmdmoo'),
          ),
          title: Text('name'),
          trailing: Text('3:40'),
        );
      },
        itemCount: 4,
        separatorBuilder: (BuildContext context, index) {
          return Divider(indent: 50.sp,
          thickness: 2,);
        },
      ),
        // child: SafeArea(
        //   child: Column(
        //     children: [
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Text('Edit',
        //           style: TextStyle(
        //             fontFamily: 'poppins',
        //             fontSize: 13.sp,
        //             fontWeight: FontWeight.w600,
        //             color: NotesColor.blueColor,
        //           ),),
        //           Align(
        //               alignment: Alignment.centerRight,
        //               child: Icon(Icons.camera_alt_outlined,
        //               color: NotesColor.blueColor,),),
        //           Icon(Icons.edit_calendar,
        //           color: NotesColor.blueColor,)
        //         ],
        //       ),
        //       Text('Chats',
        //         style: TextStyle(
        //           fontFamily: 'poppins',
        //           fontSize: 24.sp,
        //           fontWeight: FontWeight.w600,
        //           color: NotesColor.blackColor,
        //         ),),
        //       customTextField(hintText: 'Search',
        //       suffix: Icons.search),
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Text('Broadcast Lists',
        //             style: TextStyle(
        //               fontFamily: 'poppins',
        //               fontSize: 13.sp,
        //               fontWeight: FontWeight.w600,
        //               color: NotesColor.blueColor,
        //             ),),
        //           Text('New Group',
        //             style: TextStyle(
        //               fontFamily: 'poppins',
        //               fontSize: 13.sp,
        //               fontWeight: FontWeight.w600,
        //               color: NotesColor.blueColor,
        //             ),),
        //         ],
        //       ),
              // ListView.separated(itemBuilder: (BuildContext context,  index) {
              //   return ListTile(
              //     leading: CircleAvatar(
              //       // backgroundImage: NetworkImage,
              //     ),
              //     title: Text('Asfand'),
              //     trailing: Text('3:40'),
              //   );
              // },
              //   itemCount: 4,
              //   separatorBuilder: (BuildContext context, int index) {
              //   return Divider(indent: 5.sp,);
              // },
              //
              // ),
            // ],
          // ),
        // ),
      // ),
    );
  }

}