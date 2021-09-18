import 'package:covidsrilanka/utils/util_functions.dart';
import 'package:covidsrilanka/widgets/card_data.dart';
import 'package:covidsrilanka/widgets/main_banner.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String routeName = "home-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MainBanner(),
          SizedBox(height: 20),
          Row(
            children: [
              ButtonBar(
                children: [
                  MaterialButton(
                    child: Icon(Icons.local_activity),
                    onPressed: () =>
                        UtilFunctions.navigateTo(CardData(), context),
                  ),
                  MaterialButton(
                    child: Icon(Icons.local_activity),
                    onPressed: () =>
                        UtilFunctions.navigateTo(CardData(), context),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

