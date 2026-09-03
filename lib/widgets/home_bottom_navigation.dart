import 'package:flutter/material.dart';

class HomeBottomNavigation extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  const HomeBottomNavigation({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: const Color(0xFFE8F5E9).withValues(alpha: 0.8),
            width: 1,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 16,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: NavigationBar(
        height: 68,
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedIndex: selectedIndex,
        onDestinationSelected: onDestinationSelected,
        indicatorColor: const Color(0xFFD8F3DC),
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined, color: Color(0xFF8E9E99)),
            selectedIcon: Icon(Icons.home_rounded, color: Color(0xFF2D6A4F)),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_tree_outlined, color: Color(0xFF8E9E99)),
            selectedIcon:
                Icon(Icons.account_tree_rounded, color: Color(0xFF2D6A4F)),
            label: 'Tree',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline, color: Color(0xFF8E9E99)),
            selectedIcon: Icon(Icons.person_rounded, color: Color(0xFF2D6A4F)),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
