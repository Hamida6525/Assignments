import 'package:flutter/material.dart';
import 'package:toku_app/Components/Item_Card.dart';
import 'package:toku_app/Models/CardModel.dart';

class FamilymembersPage extends StatelessWidget {
  const FamilymembersPage({super.key});

  final List<CardModel> items = const [
    CardModel(
      image: "assets/images/family_members/family_grandfather.png",
      jpName: "Ojīsan",
      enName: "Grand Father",
      sound: "sounds/family_members/grand father.wav",
    ),
    CardModel(
      image: "assets/images/family_members/family_grandmother.png",
      jpName: "Obāsan",
      enName: "Grand Mother",
      sound: "sounds/family_members/grand mother.wav",
    ),
    CardModel(
      image: "assets/images/family_members/family_father.png",
      jpName: "Otōsan",
      enName: "Father",
      sound: "sounds/family_members/father.wav",
    ),
    CardModel(
      image: "assets/images/family_members/family_mother.png",
      jpName: "Okāsan",
      enName: "Mother",
      sound: "sounds/family_members/mother.wav",
    ),
    CardModel(
      image: "assets/images/family_members/family_older_brother.png",
      jpName: "Onīsan",
      enName: "Older Brother",
      sound: "sounds/family_members/older bother.wav",
    ),
    CardModel(
      image: "assets/images/family_members/family_older_sister.png",
      jpName: "Onēsan",
      enName: "Older Sister",
      sound: "sounds/family_members/older sister.wav",
    ),
    CardModel(
      image: "assets/images/family_members/family_younger_brother.png",
      jpName: "Otōto",
      enName: "Younger Brother",
      sound: "sounds/family_members/younger brohter.wav",
    ),
    CardModel(
      image: "assets/images/family_members/family_younger_sister.png",
      jpName: "Imōto",
      enName: "Younger Sister",
      sound: "sounds/family_members/younger sister.wav",
    ),
    CardModel(
      image: "assets/images/family_members/family_son.png",
      jpName: "Musuko",
      enName: "Son",
      sound: "sounds/family_members/son.wav",
    ),
    CardModel(
      image: "assets/images/family_members/family_daughter.png",
      jpName: "Musume",
      enName: "Daughter",
      sound: "sounds/family_members/daughter.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff49332A),
        title: Text(
          "Family Members",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: Color(0xff528031),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ItemCard(item: items[index], color: Color(0xff528031));
          },
        ),
      ),
    );
  }
}
