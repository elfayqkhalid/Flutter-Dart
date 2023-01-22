import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Examen Khalid"),
        ),
        drawer: Drawer(
            child: ListView(
          children: [
            Container(
              height: 150.0,
              child: DrawerHeader(
                margin: EdgeInsets.all(2.0),
                padding: EdgeInsets.all(2.0),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      height: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("images/homme.png"))),
                    ),
                    Text(
                      'Khalid El Fayq',
                      style: TextStyle(fontSize: 20.0, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              title: Text(
                'Home Page',
                style: TextStyle(color: Colors.blue, fontSize: 20.0),
              ),
              subtitle: Text('presentation'),
              trailing: Icon(Icons.arrow_right),
              onTap: () => Navigator.pushNamed(context, 'Home'),
            ),
            ListTile(
              leading: Icon(
                Icons.real_estate_agent_sharp,
                color: Colors.blue,
              ),
              title: Text(
                'CV',
                style: TextStyle(color: Colors.blue, fontSize: 20.0),
              ),
              subtitle: Text('curriculum vitae'),
              trailing: Icon(Icons.arrow_right),
              onTap: () => Navigator.pushNamed(context, 'CV'),
            ),
            ListTile(
              leading: Icon(
                Icons.restaurant,
                color: Colors.blue,
              ),
              title: Text(
                'Restaurant',
                style: TextStyle(color: Colors.blue, fontSize: 20.0),
              ),
              subtitle: Text('Buvette Universiapolis'),
              trailing: Icon(Icons.arrow_right),
              onTap: () => Navigator.pushNamed(context, 'Service'),
            ),
            ListTile(
              leading: Icon(
                Icons.web,
                color: Colors.blue,
              ),
              title: Text(
                'About',
                style: TextStyle(color: Colors.blue, fontSize: 20.0),
              ),
              subtitle: Text('Website Universiapolis'),
              trailing: Icon(Icons.arrow_right),
              onTap: () => Navigator.pushNamed(context, 'webview'),
            )
          ],
        )),
        body: Center(
          child: Column(
            children: [
               Container(
                  child: Text(
                    "Bienvenue dans l'application d'examen final",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),

            ],
          ),
        ),
      ),
    );
  }
}
