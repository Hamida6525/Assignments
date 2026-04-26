import 'package:flutter/material.dart';
import 'package:toku_app/Components/Item_Card.dart';
import 'package:toku_app/Models/CardModel.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});
  final List<CardModel> items = const [
    CardModel(
      image: "assets/images/numbers/number_one.png",
      jpName: "ichi",
      enName: "One",
      sound: "sounds/numbers/number_one_sound.mp3",
    ),
    CardModel(
      image: "assets/images/numbers/number_two.png",
      jpName: "ni",
      enName: "Two",
      sound: "sounds/numbers/number_two_sound.mp3",
    ),
    CardModel(
      image: "assets/images/numbers/number_three.png",
      jpName: "san",
      enName: "Three",
      sound: "sounds/numbers/number_three_sound.mp3",
    ),
    CardModel(
      image: "assets/images/numbers/number_four.png",
      jpName: "yon",
      enName: "Four",
      sound: "sounds/numbers/number_four_sound.mp3",
    ),
    CardModel(
      image: "assets/images/numbers/number_five.png",
      jpName: "go",
      enName: "Five",
      sound: "sounds/numbers/number_five_sound.mp3",
    ),
    CardModel(
      image: "assets/images/numbers/number_six.png",
      jpName: "roku",
      enName: "Six",
      sound: "sounds/numbers/number_six_sound.mp3",
    ),
    CardModel(
      image: "assets/images/numbers/number_seven.png",
      jpName: "nana",
      enName: "Seven",
      sound: "sounds/numbers/number_seven_sound.mp3",
    ),
    CardModel(
      image: "assets/images/numbers/number_eight.png",
      jpName: "hachi",
      enName: "Eight",
      sound: "sounds/numbers/number_eight_sound.mp3",
    ),
    CardModel(
      image: "assets/images/numbers/number_nine.png",
      jpName: "kyuu",
      enName: "Nine",
      sound: "sounds/numbers/number_nine_sound.mp3",
    ),
    CardModel(
      image: "assets/images/numbers/number_ten.png",
      jpName: "juu",
      enName: "Ten",
      sound: "sounds/numbers/number_ten_sound.mp3",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff49332A),
        title: Text(
          "Numbers",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: Color(0xffF99531),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ItemCard(item: items[index], color: Color(0xffF99531));
          },
        ),
      ),
    );
  }
}

// same  عمل listview.bulider:
// List<Widget> getList(List<Number> numbers){
//   List<CardNumberItem> itemList =[];
//   for (int i=0; i< numbers.length; i++){
//     itemList.add(CardNumberItem(number: numbers[i]));
//   }
//   return itemList;
// }