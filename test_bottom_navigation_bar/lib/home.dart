import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
import 'service.dart';




class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyAppState();
}

class _MyAppState extends State<MyHome> {

  int _currentIndex = 0;

  List pages =[
    JsonPizza(),
    cv(),
    PageWeb()
  ];

  void _onItemTapped(int index){
    setState(() {
      _currentIndex = index;
    });}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Universiapolis Laayoune'),
        ),
        body: pages[_currentIndex],

        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
            BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business',),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School',),
          ],
          onTap: _onItemTapped,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.amber[800],
          unselectedFontSize: 14.0,
          selectedFontSize: 20.0,
          iconSize: 30.0,
        ),
      ),
    );
  }
}
