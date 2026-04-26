import 'package:flutter/material.dart';
import 'package:toku_app/Components/Category_item.dart';
import 'package:toku_app/Screens/Colors_page.dart';
import 'package:toku_app/Screens/FamilyMembers_page.dart';
import 'package:toku_app/Screens/Number_page.dart';
import 'package:toku_app/Screens/Pharses_page.dart';

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4D9),
      appBar: AppBar(
        backgroundColor: Color(0xff49332A),
        title: Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return NumberPage();
                  },
                ),
              );
            },
            text: "Numbers",
            color: Color(0xffF99531),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return FamilymembersPage();
                  },
                ),
              );
            },
            text: "Family Members",
            color: Color(0xff528031),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return ColorsPage();
                  },
                ),
              );
            },
            text: "Colors",
            color: Color(0xff7D40A2),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return PharsesPage();
                  },
                ),
              );
            },
            text: "Phrases",
            color: Color(0xff47A5CB),
          ),
        ],
      ),
    );
  }
}
