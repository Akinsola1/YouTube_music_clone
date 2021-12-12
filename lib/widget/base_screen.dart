import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:youtube_music_clone/screens/artist_page.dart';
class base_screen extends StatefulWidget {
  const base_screen({Key? key}) : super(key: key);

  @override
  _base_screenState createState() => _base_screenState();
}

class _base_screenState extends State<base_screen> {
  // bottom navigation bar
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    artist_page(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 23,
        backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: const[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined), label: "Explore"),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_music_outlined), label: "Library"),
          ],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
    );
  }
}