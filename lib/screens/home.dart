import 'package:covidsrilanka/utils/util_functions.dart';
import 'package:covidsrilanka/widgets/card_data.dart';
import 'package:covidsrilanka/widgets/main_banner.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String routeName = "home-page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSriLanka = true;

  changeDestination(bool value) => {
        print(value),
        setState(() => {isSriLanka = value})
      };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainBanner(),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              alignment: Alignment.center,
              width: 200,
              child: Row(
                children: [
                  Expanded(
                    child: LocalOrGlobal(
                      changeDestination: changeDestination,
                      value: true,
                      title: "Sri Lanka",
                      color: Colors.green.shade900,
                    ),
                  ),
                  Expanded(
                    child: LocalOrGlobal(
                      changeDestination: changeDestination,
                      value: false,
                      title: "World",
                      color: Colors.blue.shade900,
                    ),
                  ),
                ],
              ),
            ),
            CardData()
          ],
        ),
      ),
    );
  }
}

class LocalOrGlobal extends StatelessWidget {
  final Function changeDestination;
  final String title;
  final bool value;
  final Color color;

  const LocalOrGlobal({
    required this.changeDestination,
    required this.title,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      color: color,
      onPressed: () => changeDestination(value),
    );
  }
}
