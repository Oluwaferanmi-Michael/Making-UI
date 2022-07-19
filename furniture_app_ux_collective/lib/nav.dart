import "package:flutter/material.dart";
import 'package:furniture_app_ux_collective/Screens/home.dart';
import 'package:furniture_app_ux_collective/util/widgets.dart';

class Nav extends StatelessWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustBNB(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: " "),
          BottomNavigationBarItem(icon: Icon(Icons.star_border_rounded), label: " "),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded), label: " "),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_rounded), label: " ")
        ],

        pages: [
          Home(),
          Center(
            child: Text(
          '2',
          style: TextStyle(color: Colors.black),
        )),
        Center(
            child: Text(
          '3',
          style: TextStyle(color: Colors.black),
        )),
        Center(
            child: Text(
          '4',
          style: TextStyle(color: Colors.black),
        )),
        ],
      )
    );
  }
}