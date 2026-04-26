import 'package:flutter/material.dart';
import 'package:toku_app/Components/Item_Card.dart';
import 'package:toku_app/Models/CardModel.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<CardModel> items = const [
    CardModel(
      image: "assets/images/colors/color_black.png",
      jpName: "ichi",
      enName: "Black",
      sound: "sounds/colors/black.wav",
    ),
    CardModel(
      image: "assets/images/colors/color_brown.png",
      jpName: "ni",
      enName: "Brown",
      sound: "sounds/colors/brown.wav",
    ),
    CardModel(
      image: "assets/images/colors/color_dusty_yellow.png",
      jpName: "san",
      enName: "Dusty Yellow",
      sound: "sounds/colors/dusty yellow.wav",
    ),
    CardModel(
      image: "assets/images/colors/color_gray.png",
      jpName: "yon",
      enName: "Gray",
      sound: "sounds/colors/gray.wav",
    ),
    CardModel(
      image: "assets/images/colors/color_green.png",
      jpName: "go",
      enName: "Green",
      sound: "sounds/colors/green.wav",
    ),
    CardModel(
      image: "assets/images/colors/color_red.png",
      jpName: "roku",
      enName: "Red",
      sound: "sounds/colors/red.wav",
    ),
    CardModel(
      image: "assets/images/colors/color_white.png",
      jpName: "nana",
      enName: "White",
      sound: "sounds/colors/white.wav",
    ),
    CardModel(
      image: "assets/images/colors/yellow.png",
      jpName: "hachi",
      enName: "Yellow",
      sound: "sounds/colors/yellow.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff49332A),
        title: Text(
          "Colors",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: Color(0xff7D40A2),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ItemCard(item: items[index], color: Color(0xff7D40A2));
          },
        ),
      ),
    );
  }
}
