import 'package:dogdom_app/ui/screens/home_screen.dart';
import 'package:dogdom_app/utils/app_color.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  @override
  State<BottomNavbar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavbar> {
  int _selectedIndex = 0;
  late List<Map<String, Object>> _pages;

  @override
  void initState() {
    _pages = [
      {'page': AppbarHomeScreen(), 'title': 'Home Screen'},
      // {'page': CircleScreen(), 'title': 'Circle Screen'},
      // {'page': ReleaseScreen(), 'title': 'Release Screen'},
      // {'page': MessagesScreen(), 'title': 'Messages Screen'},
      // {'page': ProfileScreen(), 'title': 'Profile screen'}
    ];
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12.0,
        unselectedFontSize: 12.0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'Pick up'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: AppColor.primary,
      ),
      body: _pages[_selectedIndex]['page'] as Widget,
    );
  }
}
