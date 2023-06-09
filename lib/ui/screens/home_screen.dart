import 'package:dogdom_app/models/features_item.dart';
import 'package:dogdom_app/ui/screens/discovery_screen.dart';
import 'package:dogdom_app/ui/screens/select_screen.dart';
import 'package:flutter/material.dart';
import 'package:dogdom_app/utils/app_color.dart';
import 'package:dogdom_app/utils/app_typography.dart';

class AppbarHomeScreen extends StatefulWidget {
  @override
  State<AppbarHomeScreen> createState() => _AppbarHomeScreenState();
}

class _AppbarHomeScreenState extends State<AppbarHomeScreen> {
  int _selectedIndex = 1;
  late List<Map<String, Object>> _pages;

  @override
  void initState() {
    _pages = [
      {'page': SelectScreen(), 'title': 'Sedang proses screen'},
      {'page': DiscoveryScreen(), 'title': 'Riwayat screen'}
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
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                  child: Container(
                    width: screenWidth / 2,
                    height: 56,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: _selectedIndex == 0
                            ? BorderSide(color: AppColor.primary, width: 2.0)
                            : BorderSide(color: Colors.transparent),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Select',
                        style: AppTypography.Body2.copyWith(
                          color: _selectedIndex == 0
                              ? AppColor.primary
                              : AppColor.grey4,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                  child: Container(
                    width: screenWidth / 2,
                    height: 56,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: _selectedIndex == 1
                            ? BorderSide(color: AppColor.primary, width: 2.0)
                            : BorderSide(color: Colors.transparent),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Discovery',
                        style: AppTypography.Body2.copyWith(
                          color: _selectedIndex == 1
                              ? AppColor.primary
                              : AppColor.grey4,
                        ),
                        
                      ),
                    ),
                    
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Expanded(
              child: _pages[_selectedIndex]['page'] as Widget,
            ),
          ],
        ),
      ),
    );
  }
}
