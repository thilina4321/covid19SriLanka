import 'package:flutter/material.dart';

import 'custom_text.dart';

class ColoredCard extends StatelessWidget {
  final Color color;
  final Color cardColor;
  final String result;
  final String title;

  const ColoredCard(
      {required this.color,
      required this.cardColor,
      required this.title,
      required this.result});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 2,
        color: cardColor,
        child: Container(
          height: 100,
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              CustomTextWidget(
                text: title,
                color: color,
              ),
              CustomTextWidget(
                text: result,
                color: color,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
