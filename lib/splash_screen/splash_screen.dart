import 'package:covidsrilanka/utils/util_functions.dart';
import 'package:covidsrilanka/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      UtilFunctions.navigateTo(WelcomeScreen(), context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              child: Image.asset("assets/images/virus.png")
            ),
          ],
        ),
      ),
    );
  }
}
