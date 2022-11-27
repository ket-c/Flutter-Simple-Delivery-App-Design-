import 'package:flutter/material.dart';

class LocationIndicator extends StatelessWidget {
  Color? bgColor, color;
  LocationIndicator({
    Key? key,
    required this.bgColor,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
              color: bgColor, borderRadius: BorderRadius.circular(100)),
        ),
        Container(
          height: 7,
          width: 7,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(100)),
        )
      ],
    );
  }
}

