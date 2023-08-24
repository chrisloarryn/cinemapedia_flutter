import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_max), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.label_outline), label: 'Search'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline), label: 'Favorite'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
      fixedColor: colors.primary,
      unselectedItemColor: colors.onBackground,
      showUnselectedLabels: true,
    );
  }
}
