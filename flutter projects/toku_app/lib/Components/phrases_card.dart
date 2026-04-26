import 'package:flutter/material.dart';
import 'package:toku_app/Components/Info_Item.dart';
import 'package:toku_app/Models/CardModel.dart';

class PhrasesCard extends StatelessWidget {
  const PhrasesCard({super.key, required this.item, required this.color});

  final CardModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: color,
      child: InfoItem(item: item),
    );
  }
}
