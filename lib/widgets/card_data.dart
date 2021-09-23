import 'package:covidsrilanka/widgets/colored_card.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class CardData extends StatefulWidget {
  final bool isSriLanka;
  CardData(this.isSriLanka);
  @override
  _CardDataState createState() => _CardDataState();
}

class _CardDataState extends State<CardData> {
  Map localData = {};
  Map globalData = {};
  var datetime = '';

  Future getHttp() async {
    try {
      var response = await Dio()
          .get('https://www.hpb.health.gov.lk/api/get-current-statistical');

      var myData = response.data["data"];

      datetime = myData['update_date_time'];

      localData = {
        "local_new_cases": myData["local_new_cases"],
        "local_total_cases": myData["local_total_cases"],
        // "local_total_number_of_individuals_in_hospitals":
        //     myData["local_total_number_of_individuals_in_hospitals"],
        "local_deaths": myData["local_deaths"],
        "local_new_deaths": myData["local_new_deaths"],
        "local_recovered": myData["local_recovered"],
        // "local_active_cases": myData["local_active_cases"],
      };

      globalData = {
        "global_new_cases": myData["global_new_cases"],
        "global_total_cases": myData["global_total_cases"],
        "global_deaths": myData["global_deaths"],
        "global_new_deaths": myData["global_new_deaths"],
        "global_recovered": myData["global_recovered"],
      };

      return globalData;
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    getHttp();
    return FutureBuilder(
        future: getHttp(),
        builder: (ctx, data) {
          if (data.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (data.error != null) {
            return Text("Something went wrong");
          }
          return widget.isSriLanka
              ? LocalAndGloablCovidData(
                  totalCases: localData['local_total_cases'],
                  newDeaths: localData['local_new_deaths'],
                  newCases: localData['local_new_cases'],
                  totalDeaths: localData['local_deaths'],
                  recoved: localData['local_recovered'],
                  datetime: datetime,
                )
              : LocalAndGloablCovidData(
                  totalCases: globalData['global_total_cases'],
                  newDeaths: globalData['global_new_deaths'],
                  newCases: globalData['global_new_cases'],
                  totalDeaths: globalData['global_deaths'],
                  recoved: globalData['global_recovered'],
                  datetime: datetime,
                );
        });
  }
}

class LocalAndGloablCovidData extends StatelessWidget {
  final int newCases;
  final int totalCases;
  final int newDeaths;
  final int totalDeaths;
  final int recoved;
  final String datetime;

  const LocalAndGloablCovidData({
    required this.totalCases,
    required this.newDeaths,
    required this.newCases,
    required this.totalDeaths,
    required this.recoved,
    required this.datetime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text("Last time data updated " + datetime),
          Row(
            children: [
              Expanded(
                child: ColoredCard(
                  cardColor: Colors.green.shade100,
                  color: Colors.green,
                  result: newCases.toString(),
                  title: 'New Cases',
                ),
              ),
              Expanded(
                child: ColoredCard(
                  cardColor: Colors.blue.shade100,
                  color: Colors.blue,
                  result: totalCases.toString(),
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
                  result: totalDeaths.toString(),
                  title: 'Total Deaths',
                ),
              ),
              Expanded(
                child: ColoredCard(
                  cardColor: Colors.blue.shade100,
                  color: Colors.blue,
                  result: newDeaths.toString(),
                  title: "Today Deaths",
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
                  result: recoved.toString(),
                  title: 'Recovered',
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
