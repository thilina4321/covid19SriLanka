import 'package:covidsrilanka/widgets/colored_card.dart';
import 'package:flutter/material.dart';

class CardData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          
          // "local_new_cases": 2078,
          // "local_total_cases": 502302,
          // "local_total_number_of_individuals_in_hospitals": 59244,
          // "local_deaths": 11938,
          // "local_new_deaths": 121,
          // "local_recovered": 431036,
          // "local_active_cases": 59244,
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
