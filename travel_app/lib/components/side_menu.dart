import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int _currentIndex = 0; // Track the selected index

  final List<Widget> _pages = [
    const Icon(Icons.home, size: 30),
    const Icon(Icons.search, size: 30),
    const Icon(Icons.favorite, size: 30),
    const Icon(Icons.settings, size: 30),
    // Add your pages here
  ];

  final List<Widget> _contentPages = [
    Center(child: Text('Home Page')),
    Center(child: Text('Search Page')),
    Center(child: Text('Favorites Page')),
    Center(child: Text('Settings Page')),
    // Add your actual page content here
  ];

  final List<Color> _bgColors = [
    const Color.fromARGB(255, 45, 18, 93),
    Colors.deepPurple,
    const Color.fromARGB(255, 174, 170, 180),
    const Color.fromARGB(255, 58, 183, 62),
    // Add your colors here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: _bgColors[_currentIndex],
        child: _contentPages[_currentIndex], // Display the current page content
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: _bgColors[_currentIndex],
        items: _pages,
        animationDuration: Duration(milliseconds: 200),
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update the current index
          });
        },
      ),
    );
  }
}
