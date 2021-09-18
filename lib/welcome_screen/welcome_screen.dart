import 'package:covidsrilanka/utils/constants.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Container(
                child: Image.asset(
                  Constants.imageAsset("family.png"),
                  width: size.width,
                  height: size.height,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: size.height / 1.55,
                child: Container(
                  width: size.width,
                  height: size.height / 2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30), 
                    ),
                  ),
                ),
              ),
              Positioned(
                top: size.height / 1.5,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " Be aware",
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(
                        height: size.height / 400,
                      ),
                      Text(
                        " Stay healthy",
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(
                        height: size.height / 50,
                      ),
                      Text(
                        "  Welcome to COVID-19 infromation portal",
                        style: TextStyle(letterSpacing: 1,fontSize: 15),
                      ),
                      SizedBox(
                        height: size.height / 20,
                      ),
                      Container(
                        width: size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("GET STARTED"),
                            MaterialButton(
                              onPressed: () {},
                              color: Colors.blue[300],
                              textColor: Colors.white,
                              child: Icon(
                                Icons.arrow_forward_rounded,
                                size: 30,
                              ),
                              padding: EdgeInsets.all(10),
                              shape: CircleBorder(),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
