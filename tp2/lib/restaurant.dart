import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main() => runApp(pizza());



class pizza extends StatelessWidget {
  const pizza({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Buvette Universitaire")),
        body: SafeArea(
          child: Column(children: [
            Container(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                margin: EdgeInsets.all(10.0),
                color: Colors.deepOrangeAccent,
                child: Row(
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/pizza1.png'),
                      width: 50.0,
                      height: 50.0,
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      'pizza végétarienne',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25.0),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                margin: EdgeInsets.all(10.0),
                color: Colors.deepOrangeAccent,
                child: Row(
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/pizza2.png'),
                      width: 50.0,
                      height: 50.0,
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      'Pizza italienne',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30.0),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                margin: EdgeInsets.all(10.0),
                color: Colors.deepOrangeAccent,
                child: Row(
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/sandwich.png'),
                      width: 50.0,
                      height: 50.0,
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      'Sandwitch',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30.0),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                margin: EdgeInsets.all(10.0),
                color: Colors.deepOrangeAccent,
                child: Row(
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/frite.png'),
                      width: 50.0,
                      height: 50.0,
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      'Frite',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30.0),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                margin: EdgeInsets.all(10.0),
                color: Colors.deepOrangeAccent,
                child: Row(
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/coca.png'),
                      width: 50.0,
                      height: 50.0,
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      'Boisson',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30.0),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}


