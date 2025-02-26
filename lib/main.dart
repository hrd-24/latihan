import 'package:flutter/material.dart';
import 'package:latihan/bussines/bussines.dart';
import 'package:latihan/bussines/stack/stack_screen.dart';
import 'package:latihan/drawer/drawer.dart';
import 'package:latihan/login/login.dart';
import 'package:latihan/grid/gridView.dart';
import 'package:latihan/home/home.dart'; // Import HomeScreen
import 'package:latihan/login/loginHrd.dart';
import 'package:latihan/school/schoolModel.dart';

void main() => runApp(const BottomNavigationBarExampleApp());

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: BottomNavigationBarExample());
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    LoginScreen(), // Reference the LoginScreen widget
    HomeScreen(), // Reference the HomeScreen widget
    BusinessScreen(), // Reference the BusinessScreen widget
    SchoolScreen(), // Reference the SchoolScreen widget
    StackScreen(), // Reference the StackScreen widget
    GridScreen(), // Reference the GridScreen widget
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('BottomNavigationBar Sample')),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.business),label: 'Business',),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
          BottomNavigationBarItem(icon: Icon(Icons.table_bar), label: 'Stack'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_3x3), label: 'School'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
