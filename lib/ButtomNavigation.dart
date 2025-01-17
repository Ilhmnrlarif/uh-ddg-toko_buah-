import 'package:flutter/material.dart';
import 'package:ulangan_ddg/HalamanDua.dart';

class ButtomNavigation extends StatefulWidget {
  const ButtomNavigation({Key? key}) : super(key: key);

  @override
  _ButtomNavigation createState() => _ButtomNavigation();
}

class _ButtomNavigation extends State {
  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: const Color.fromARGB(255, 30, 30, 30),
      ),
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedTab,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 40,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 35), label: "About"),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: const Icon(Icons.favorite_outlined, size: 35),
                tooltip: 'Your favorite fruit',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HalamanDua()),
                  );
                },
              ),
              label: "Contact"),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment_add, size: 35),
              label: "Product"),
        ],
      ),
    );
  }
}
