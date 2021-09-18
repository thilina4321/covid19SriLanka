import 'package:covidsrilanka/widgets/colored_card.dart';
import 'package:flutter/material.dart';

class CardData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: ColoredCard(
                  cardColor: Colors.green.shade100,
                  color: Colors.green,
                  result: '100',
                  title: 'New Cases',
                ),
              ),
              Expanded(
                child: ColoredCard(
                  cardColor: Colors.blue.shade100,
                  color: Colors.blue,
                  result: '100',
                  title: 'Total Cases',
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ColoredCard(
                  cardColor: Colors.green.shade100,
                  color: Colors.green,
                  result: '100',
                  title: 'Total Deaths',
                ),
              ),
              Expanded(
                child: ColoredCard(
                  cardColor: Colors.blue.shade100,
                  color: Colors.blue,
                  result: '100',
                  title: 'Today Deaths',
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ColoredCard(
                  cardColor: Colors.green.shade100,
                  color: Colors.green,
                  result: '100',
                  title: 'Recovered',
                ),
              ),
              Expanded(
                child: ColoredCard(
                  cardColor: Colors.blue.shade100,
                  color: Colors.blue,
                  result: '100',
                  title: 'Active Cases',
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
