// ignore_for_file: prefer_final_fields, unused_field, prefer_const_constructors

import 'package:facebook_web/components/navigation_tab.dart';
import 'package:facebook_web/components/navigation_tab_desktop.dart';
import 'package:facebook_web/data/data.dart';
import 'package:facebook_web/screens/home.dart';
import 'package:facebook_web/utils/responsive.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> _screens = [
    Home(),
    Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text(
          'Navegação',
          style: TextStyle(fontSize: 36),
        ),
      ),
    ),
    Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Text(
          'por',
          style: TextStyle(fontSize: 36),
        ),
      ),
    ),
    Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Text(
          'TabBar',
          style: TextStyle(fontSize: 36),
        ),
      ),
    ),
    Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Text(
          ':D',
          style: TextStyle(fontSize: 36),
        ),
      ),
    ),
  ];

  final List<IconData> _icons = [
    Icons.home,
    Icons.ondemand_video,
    Icons.storefront_outlined,
    Icons.flag_outlined,
    Icons.menu,
  ];

  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: DefaultTabController(
        length: _icons.length,
        child: Scaffold(
          appBar: isDesktop
              ? PreferredSize(
                  child: NavigationTabDesktop(
                    user: actualUser,
                    icons: _icons,
                    selectedTabIndex: _selectedTabIndex,
                    onTap: (index) {
                      setState(() {
                        _selectedTabIndex = index;
                      });
                    },
                  ),
                  preferredSize: Size(size.width, 50),
                )
              : null,
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: _screens,
          ),
          bottomNavigationBar: isDesktop
              ? null
              : NavigationTab(
                  icons: _icons,
                  onTap: (index) {
                    setState(() {
                      _selectedTabIndex = index;
                    });
                  },
                  selectedTabIndex: _selectedTabIndex,
                ),
        ),
      ),
    );
  }
}
