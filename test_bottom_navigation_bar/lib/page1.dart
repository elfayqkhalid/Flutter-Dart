import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class page1 extends StatelessWidget {
  const page1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "Home",
                      style: TextStyle(fontSize: 30),
                    ),
                    Icon(Icons.home, size: 200.0),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
