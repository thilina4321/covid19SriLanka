import 'package:covidsrilanka/utils/constants.dart';
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
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: size.width/2,
                height: size.height/2,
                child: Image.asset(Constants.imageAsset("virus.png"))
              ),
            ),
          ],
        ),
      ),
    );
  }
}
