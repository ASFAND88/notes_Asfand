import 'package:flutter/material.dart';

import '../../helpers/constants.dart';
import '../layouts/layout_home_screen.dart';
import '../layouts/layout_profile_screen.dart';
import 'add_notes.dart';

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
        selectedItemColor: NotesColor.appColor,
        unselectedItemColor: NotesColor.neutralDarkColor,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
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
              MaterialPageRoute(builder: (context)=>homeNotesScreen(),),
            );
          });
        },
        child: Icon(Icons.add,),
      ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
