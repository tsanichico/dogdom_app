import 'package:dogdom_app/ui/screens/discovery_screen.dart';
import 'package:dogdom_app/ui/screens/select_screen.dart';
import 'package:flutter/material.dart';
import 'package:dogdom_app/utils/app_color.dart';
import 'package:dogdom_app/utils/app_typography.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: const Color(0xffD43131), useMaterial3: true),
      home: const AppBarExample(),
    );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({Key? key});

  @override
  Widget build(BuildContext context) {
    const int tabsCount = 2;

    return DefaultTabController(
      initialIndex: 1,
      length: tabsCount,
      child: Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
          toolbarHeight: 10,
          notificationPredicate: (ScrollNotification notification) {
            return notification.depth == 1;
          },
          scrolledUnderElevation: 4.0,
          backgroundColor: AppColor.white,
          bottom: TabBar(
            indicatorColor: AppColor.primary,
            isScrollable: true,
            tabs: [
              Tab(
                child: Text(
                  'Select',
                ),
              ),
              Tab(
                child: Text(
                  'Discovery',
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(22),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Send the sample',
                  hintStyle: AppTypography.Body3,
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: AppColor.grey5,
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(
                    child: Text('Select'),
                  ),
                  Center(
                    child: Text('Discovery'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
