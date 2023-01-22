import 'package:flutter/material.dart';

class PageCV extends StatelessWidget {
  const PageCV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
            title: Text("Universiapolis Laayoune")),
        body: Center(
          child: SafeArea(
            child: Column(children: [
              SizedBox(height: 30),
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("images/homme.png"),
              ),
              Text(
                "محمد سالم",
                style: TextStyle(
                    fontSize: 30.0,
                    //color: Colors.blue,
                    fontFamily: "Noto",
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "طالب بالجامعة الدولية للعيون",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                    fontSize: 22.0),
              ),
              Card(
                color: Colors.blue,
                margin: EdgeInsets.all(15.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    Icon(Icons.phone, size: 30, color: Colors.white),
                    SizedBox(width: 15),
                    Text(
                      "0661504517",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    )
                  ]),
                ),
              ),
              Card(
                color: Colors.blue,
                margin: EdgeInsets.all(15.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    Icon(Icons.email, size: 30, color: Colors.white),
                    SizedBox(width: 15),
                    Text(
                      "mohamedsalem@gmail.com",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )
                  ]),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
