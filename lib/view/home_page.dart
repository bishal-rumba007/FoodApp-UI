import 'package:flutter/material.dart';
import 'package:food_app_ui/view/Screens/home_body.dart';
import 'package:food_app_ui/view/Screens/screen2.dart';
import 'package:food_app_ui/view/Screens/screen4.dart';
import 'package:food_app_ui/view/Screens/user_account.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int theIndex = 0;
  List<Widget> widgetList = [HomeBody(), Screen2(), Account(), Screen4()];
  final Color mainColor = Color(0xffD40909);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList[theIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            theIndex = index;
          });
        },
        selectedItemColor: mainColor,
        selectedLabelStyle: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.w500,
        ),
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 10.5.sp,
        unselectedItemColor: Colors.black87,
        currentIndex: theIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}
