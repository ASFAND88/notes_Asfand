import 'package:flutter/material.dart';

import '../../helpers/constants.dart';
import '../layouts/layout_home_screen.dart';
import '../layouts/layout_profile_screen.dart';
import 'notes1_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
