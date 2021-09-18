import 'package:flutter/material.dart';

class CardData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Card(
            shadowColor: Colors.pink,
            color: Colors.white,
            child: Row(
              children: [
                Image.asset('name'),
                Text('Hello world'),
              ],
            ),
            elevation: 2,
          )
        ],
      ),
    );
  }
}
