import 'package:flutter/material.dart';
import 'package:competify_app/pages/matching_page.dart';
import 'package:competify_app/pages/profile_page.dart';
import 'package:competify_app/pages/progress_page.dart';
import 'package:competify_app/pages/home/home_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const ProgressPage(),
    const MatchingPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        decoration: BoxDecoration(
          color: const Color(0xFF464D81),
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.home, 'Home', 0),
            _buildNavItem(Icons.bar_chart, 'Progress', 1),
            _buildNavItem(Icons.group_add, 'Matching', 2),
            _buildNavItem(Icons.person, 'Profile', 3),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 1),
            decoration:
                isSelected
                    ? BoxDecoration(
                      color: const Color(0XFFF9F1BE),
                      borderRadius: BorderRadius.circular(20),
                    )
                    : null,
            child: Column(
              children: [
                Icon(
                  icon,
                  size: 28,
                  color:
                      isSelected
                          ? const Color(0xFF464D81)
                          : const Color(0XFFBFBFBF),
                ),
                const SizedBox(height: 2),
                Text(
                  label,
                  style: TextStyle(
                    color:
                        isSelected
                            ? const Color(0xFF464D81)
                            : const Color(0XFFBFBFBF),
                    fontSize: 11,
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
