import 'package:flutter/material.dart';

class MainBanner extends StatelessWidget {
  const MainBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(20),
      shadowColor: Colors.pink,
      color: Colors.white,
      child: Container(
        height: 200,
        child: Row(
          children: [
            Expanded(
              child: Image.asset(
                "images/doctor.jpeg",
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 15),
                alignment: Alignment.center,
                child: Text(
                  ' සෞඛ්‍ය මාර්ගෝපදේශ නිවැරදිව පිළිපදින්න.',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
      elevation: 2,
    );
  }
}