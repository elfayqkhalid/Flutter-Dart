import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

void main() => runApp(LoginScreen());

class LoginScreen extends StatefulWidget {
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown[100],
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 200,
                width: 350,
                child: Image.asset(
                  'images/universiapolis.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Se connecter à Universiapolis Laayoune Mail',
                        style: TextStyle(color: Colors.brown, fontSize: 15),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 40, right: 40, top: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: Colors.brown[50],
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(20),
                                child: Icon(
                                  Icons.accessibility,
                                  color: Colors.brown,
                                ),
                              ),
                              Text(
                                'email',
                                style: TextStyle(
                                    color: Colors.brown, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 40, right: 40, top: 10, bottom: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: Colors.brown[50],
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(20),
                                child: Icon(
                                  Icons.lock,
                                  color: Colors.brown,
                                ),
                              ),
                              Text('mot de passe',
                                  style: TextStyle(
                                      color: Colors.brown, fontSize: 20))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Mot de passe oublié ?',
                      style: TextStyle(color: Colors.brown, fontSize: 20),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 40, right: 40, top: 30, bottom: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: Colors.brown,
                          child: Center(
                            child: Text('Se connecter',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 30),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 5, right: 5),
                            child: SignInButton(
                              Buttons.AppleDark,
                              text: "connecter",
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 5, right: 5),
                            child: SignInButton(
                              Buttons.Google,
                              text: "connecter",
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 5, right: 10),
                            child: SignInButton(
                              Buttons.Facebook,
                              text: "connecter",
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
