import 'package:flutter/material.dart';
import 'package:toku_app/Components/phrases_card.dart';
import 'package:toku_app/Models/CardModel.dart';

class PharsesPage extends StatelessWidget {
  const PharsesPage({super.key});

  final List<CardModel> items = const [
    CardModel(
      jpName: "Kimasu ka?",
      enName: "Are You Coming?",
      sound: "sounds/phrases/are_you_coming.wav",
    ),
    CardModel(
      jpName: "Chan'neru tōroku o o wasurenaku",
      enName: "Don't Forget To Subscribe",
      sound: "sounds/phrases/dont_forget_to_subscribe.wav",
    ),
    CardModel(
      jpName: "Go kibun wa ikagadesu ka?",
      enName: "How Are You Feeling",
      sound: "sounds/phrases/how_are_you_feeling.wav",
    ),
    CardModel(
      jpName: "Anime ga daisuki",
      enName: "I Love Anime",
      sound: "sounds/phrases/i_love_anime.wav",
    ),
    CardModel(
      jpName: "Puroguramingu ga daisuki",
      enName: "I Love Programming",
      sound: "sounds/phrases/i_love_programming.wav",
    ),
    CardModel(
      jpName: "Puroguramingu wa kantandesu",
      enName: "Programming Is Easy",
      sound: "sounds/phrases/programming_is_easy.wav",
    ),
    CardModel(
      jpName: "Anata no namae wa nanidesu ka?",
      enName: "What Is Your Name?",
      sound: "sounds/phrases/what_is_your_name.wav",
    ),
    CardModel(
      jpName: "Doko ni iku no?",
      enName: "Where Are You Going?",
      sound: "sounds/phrases/where_are_you_going.wav",
    ),
    CardModel(
      jpName: "Hai, ikimasu",
      enName: "Yes, I'm Coming",
      sound: "sounds/phrases/yes_im_coming.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff49332A),
        title: Text(
          "Pharses",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: Color(0xff47A5CB),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return PhrasesCard(item: items[index], color: Color(0xff47A5CB));
          },
        ),
      ),
    );
  }
}
