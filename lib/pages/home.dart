import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery/pages/home_page.dart';

class mynavbar extends StatefulWidget {
  @override
  _mynavbarState createState() => _mynavbarState();
}

class _mynavbarState extends State<mynavbar> {
  int currentindex = 0;
  List <Widget> children = [
    Home(),
    Home(),
    Home(),

  ];
  void onTapped(index){
    setState(() {
      currentindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.redAccent,
        onTap: onTapped,
        items: [
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('Track Order'),
            icon: Icon(Icons.location_on),
          ),
          BottomNavigationBarItem(
            title: Text('Account'),
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}
