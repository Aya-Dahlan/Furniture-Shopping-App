import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shopping/constants.dart';
import 'package:furniture_shopping/screens/favorites_screen.dart';
import 'package:furniture_shopping/screens/home_screen.dart';
import 'package:furniture_shopping/screens/notifications_screen.dart';
import 'package:furniture_shopping/screens/profile_screen.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  final tabs= [
    const HomeScreen(),
    FavoritesScreen(),
   const  NotificationsScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kMainColor,
        items: [
          BottomNavigationBarItem(
              label: '',
              icon: SvgPicture.asset('assets/images/icons/home.svg', color: _currentIndex== 0 ? kMainColor: Color(0xff999999),),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              label: ' ',
              icon: SvgPicture.asset(_currentIndex==1?'assets/images/icons/savedS.svg':'assets/images/icons/saved.svg', color: _currentIndex==1 ? kMainColor: Color(0xff999999),),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              label: '',
              icon: SvgPicture.asset(_currentIndex==2?'assets/images/icons/notificationsS.svg':'assets/images/icons/notifications.svg', color: _currentIndex==2?kMainColor:Color(0xff999999),),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              label: '',
              icon: SvgPicture.asset(_currentIndex==3?'assets/images/icons/profileS.svg':'assets/images/icons/profile.svg', color: _currentIndex==3?kMainColor:Color(0xff999999),),
              backgroundColor: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            print(_currentIndex);
          });
        },
      ),
    );
  }
}
