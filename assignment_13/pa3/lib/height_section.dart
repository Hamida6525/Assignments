import 'package:flutter/material.dart';
import 'constants.dart';

class HeightCard extends StatelessWidget {
  final double height;
  final ValueChanged<double> onChanged;

  HeightCard({
    required this.height,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kCardColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('HEIGHT', style: TextStyle(color: kLabelColor)),
          SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                height.round().toString(),
                style: TextStyle(
                  color: kWhite,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(' cm', style: TextStyle(color: kWhite)),
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              thumbColor: kPinkColor,
              activeTrackColor: kWhite,
              inactiveTrackColor: kLabelColor,
            ),
            child: Slider(
              min: 120,
              max: 220,
              value: height,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
