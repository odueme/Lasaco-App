import 'package:algora_design/dashboard.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});
  @override
  State<TabsScreen> createState() {
    return _TabsScreen();
  }
}

class _TabsScreen extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  final List<Widget> _pages = [
    const Dashboard(),
    // Add other pages here
    Container(color: Colors.blue), // Example placeholder page
    Container(color: Colors.green), // Example placeholder page
    Container(color: Colors.red), // Example placeholder page
  ];

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        selectedItemColor: Colors.blue, 
        unselectedItemColor: Colors.grey, 
        selectedIconTheme: const IconThemeData(size: 24), 
        unselectedIconTheme: const IconThemeData(size: 24),
        selectedLabelStyle: const TextStyle(color: Colors.blue), 
        unselectedLabelStyle: const TextStyle(color: Colors.grey), 
          showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed, 
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'products'),
           BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Account'),
          BottomNavigationBarItem(icon: Icon(Icons.message_sharp), label: 'Contact Us'),
         
        ],
      ),
    );
  }
}
