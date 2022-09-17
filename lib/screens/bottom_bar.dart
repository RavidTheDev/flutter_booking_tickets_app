import 'package:booking_ticket_app/screens/profile_screen.dart';
import 'package:booking_ticket_app/screens/search_screen.dart';
import 'package:booking_ticket_app/screens/ticket_screen.dart';

import '/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    TicketScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: const Color(0xFF526480),
          items: [
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.home_16_regular),
                activeIcon: Icon(FluentIcons.home_16_filled),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.search_16_regular),
                activeIcon: Icon(FluentIcons.search_16_filled),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.ticket_diagonal_16_regular),
                activeIcon: Icon(FluentIcons.ticket_diagonal_16_filled),
                label: "Ticket"),
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.person_16_regular),
                activeIcon: Icon(FluentIcons.person_16_filled),
                label: "Profile"),
          ]),
    );
  }
}
