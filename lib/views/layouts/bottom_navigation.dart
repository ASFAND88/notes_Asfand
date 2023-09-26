import 'package:flutter/material.dart';
import 'package:untitled3/views/layouts/screen_chats.dart';

import '../../helpers/constants.dart';
import '../layouts/layout_home_screen.dart';
import '../layouts/layout_profile_screen.dart';
import '../screens/notes1_screen.dart';

class BottomNavigation extends StatefulWidget {
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex=0;

  List layout = [
    LayoutHome(),
    LayoutProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: layout [selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellow,
        selectedItemColor: NotesColor.appColor,
        unselectedItemColor: NotesColor.neutralDarkColor,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          // BottomNavigationBarItem(
          // icon: Icon(Icons.radar_rounded),
          // label: 'status',),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.call_sharp),
          //   label: 'calls',),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.groups_outlined),
          //   label: 'communities',),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.wechat_sharp),
          //   label: 'chats',),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.settings),
          //   label: 'settings',),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'profile',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: NotesColor.appColor,
        onPressed: (){
          setState(() {
            Navigator.push(context,
              MaterialPageRoute(builder: (context)=>notesScreenOne(),),
            );
          });
        },
        child: Icon(Icons.add,),
      ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
