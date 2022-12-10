import 'package:flutter/material.dart';
import 'package:ui_task/call_screen.dart';
import 'package:ui_task/contacts_screen.dart';
import 'package:ui_task/group_call.dart';
import 'package:ui_task/group_screen.dart';
import 'package:ui_task/message_screen.dart';
import 'package:ui_task/setting_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var pageData = [MessageScreen(),GroupCallScreen(),GroupScreen(),SettingScreen()];
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageData[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        onTap: (index){
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        selectedItemColor: Color(0xff05028F),
        unselectedItemColor: Color(0xff797C7B),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.commentDots),
          label: 'Message'
          ),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.phoneVolume,),
              label: 'Calls'),
          BottomNavigationBarItem(icon: Icon(Icons.contacts,),
              label: 'Contacts'),
          BottomNavigationBarItem(icon: Icon(Icons.settings,),
              label: 'Settings'),
        ],
      ),
    );
  }
}
