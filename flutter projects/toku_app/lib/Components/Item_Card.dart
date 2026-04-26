import 'package:flutter/material.dart';
import 'package:toku_app/Components/Info_Item.dart';
import 'package:toku_app/Models/CardModel.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.item, required this.color});

  final CardModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: color,
      child: Row(
        children: [
          Container(color: Color(0xffFFF4D9), child: Image.asset(item.image!)),

          Expanded(child: InfoItem(item: item)),
        ],
      ),
    );
  }
}
