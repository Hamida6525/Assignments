import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({super.key, this.text, this.color, this.onTap});

  String? text;
  Color? color;
  void Function()? onTap; //typedef:VoidCallback(another name same work)

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 20),
        color: color,
        height: 65,
        width: double.infinity,
        alignment: Alignment.centerLeft,
        child: Text(text!, style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );
  }
}
