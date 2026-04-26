import 'package:flutter/material.dart';
import 'package:toku_app/Models/CardModel.dart';

class InfoItem extends StatelessWidget {
  const InfoItem({super.key, required this.item});

  final CardModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.jpName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                item.enName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),

        Spacer(flex: 1),
        IconButton(
          splashColor: Colors.white,
          onPressed: () {
            item.playsound();
          },

          icon: const Icon(Icons.play_arrow, color: Colors.white),
        ),
      ],
    );
  }
}
