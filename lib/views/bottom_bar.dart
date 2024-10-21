import 'package:flutter/material.dart';
import 'package:pantho/constants/assets.dart';

import 'package:pantho/theme/app_colors.dart';
import 'package:pantho/views/home_screen.dart';
import 'package:pantho/views/notifications_screen.dart';
import 'package:pantho/views/profile_screen.dart';
import 'package:pantho/views/settings_screen.dart';

import 'package:pantho/widgets/custom_fab.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0; // Track the selected index

  // List of screens to display
  final List<Widget> _screens = [
    HomeScreen(),
    ProfileScreen(),
    SizedBox.shrink(),
    SettingsScreen(),
    NotificationsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                Assets.assetsIconsHome,
                color: _selectedIndex == 0
                    ? AppColors.secondary
                    : Colors.grey, // Change color based on selection
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Image.asset(
                Assets.assetsIconsProfile,
                color: _selectedIndex == 1
                    ? AppColors.secondary
                    : Colors.grey, // Change color based on selection
              ),
              label: ""),
          // Custom widget for FAB
          const BottomNavigationBarItem(icon: SizedBox.shrink(), label: ""),
          BottomNavigationBarItem(
              icon: Image.asset(
                Assets.assetsIconsSettings,
                color: _selectedIndex == 3
                    ? AppColors.secondary
                    : Colors.grey, // Change color based on selection
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: _selectedIndex == 4
                    ? AppColors.secondary
                    : Colors.grey, // Change color based on selection
              ),
              label: ""),
        ],
        unselectedItemColor: Colors.grey, // Color for unselected items
        selectedItemColor: AppColors.secondary, // Color for selected items
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          boxShadow: [
            BoxShadow(
              color: AppColors.secondary,
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(3, 3),
            ),
          ],
        ),
        child: FloatingActionButton(
          backgroundColor: AppColors.secondary,
          onPressed: () {},
          child: Image.asset(Assets.assetsIconsFab),
          elevation: 0,
          splashColor: Color(0xFF78A9),
        ),
      ),
      floatingActionButtonLocation:
          CustomFloatingActionButton(), // Use custom location
    );
  }
}
