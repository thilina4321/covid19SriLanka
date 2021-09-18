import 'package:covidsrilanka/widgets/card_data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String routeName = "home-page";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.access_alarm),
            ),
            Tab(
              icon: Icon(Icons.ac_unit),
            )
          ]),
        ),
        body: TabBarView(
          children: [
            CardData(),
            Text('data'),
          ],
        ),
      ),
    );
  }
}
