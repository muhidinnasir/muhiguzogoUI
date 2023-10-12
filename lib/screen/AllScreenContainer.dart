// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:muhiguzogo/screen/home.dart';

// ignore: must_be_immutable
class CustomContainerView extends StatefulWidget {
  const CustomContainerView({super.key});
  @override
  State<CustomContainerView> createState() => _CustomContainerViewState();
}

class _CustomContainerViewState extends State<CustomContainerView> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const Center(
      child: Text("Booking"),
    ),
    const Center(
      child: Text("Notification"),
    ),
    const Center(
      child: Text("Setting"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            setState(() {});
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  Icons.search,
                  color: _currentIndex == 0
                      ? const Color.fromARGB(255, 31, 28, 102)
                      : Colors.grey,
                ),
                Text(
                  "Search",
                  style: TextStyle(
                    color: _currentIndex == 0
                        ? const Color.fromARGB(255, 31, 28, 102)
                        : Colors.grey,
                    fontWeight: FontWeight.w600,
                    // fontSize: 15,
                  ),
                ),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  Icon(
                    Icons.card_travel,
                    color: _currentIndex == 1
                        ? const Color.fromARGB(255, 31, 28, 102)
                        : Colors.grey,
                  ),
                  Text(
                    "Booking",
                    style: TextStyle(
                      color: _currentIndex == 1
                          ? const Color.fromARGB(255, 31, 28, 102)
                          : Colors.grey,
                      fontWeight: FontWeight.w600,
                      // fontSize: 15,
                    ),
                  ),
                ],
              ),
              label: ''),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  Icons.notifications,
                  color: _currentIndex == 2
                      ? const Color.fromARGB(255, 31, 28, 102)
                      : Colors.grey,
                ),
                Text(
                  "Notifications",
                  style: TextStyle(
                    color: _currentIndex == 2
                        ? const Color.fromARGB(255, 31, 28, 102)
                        : Colors.grey,
                    fontWeight: FontWeight.w600,
                    // fontSize: 15,
                  ),
                ),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  Icons.settings,
                  color: _currentIndex == 3
                      ? const Color.fromARGB(255, 31, 28, 102)
                      : Colors.grey,
                ),
                Text(
                  "Setting",
                  style: TextStyle(
                    color: _currentIndex == 3
                        ? const Color.fromARGB(255, 31, 28, 102)
                        : Colors.grey,
                    fontWeight: FontWeight.w600,
                    // fontSize: 15,
                  ),
                ),
              ],
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
