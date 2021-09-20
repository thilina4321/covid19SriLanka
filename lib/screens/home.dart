import 'package:covidsrilanka/widgets/card_data.dart';
import 'package:covidsrilanka/widgets/main_banner.dart';
import 'package:flutter/material.dart';

class Hello{
  final String? name;

  Hello({this.name});
}

class HomePage extends StatefulWidget {
  static String routeName = "home-page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSriLanka = true;
  Hello myName = Hello(name: '1');

  changeDirection(bool value) => {
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
                  Text(myName.name.toString()),
                  Expanded(
                    child: LocalOrGlobal(
                      changeDestination: changeDirection,
                      value: true,
                      title: "Sri Lanka",
                      color: Colors.green.shade900,
                    ),
                  ),
                  Expanded(
                    child: LocalOrGlobal(
                      changeDestination: changeDirection,
                      value: false,
                      title: "World",
                      color: Colors.blue.shade900,
                    ),
                  ),
                ],
              ),
            ),
            CardData(isSriLanka)
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
