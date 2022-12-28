import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(imc());

class imc extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

bool? isChecked = false;

class _DemoState extends State<imc> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  String resultat ="";




  void initState() {
    super.initState();
    resetFields();
  }
  void resetFields() {
    _weightController.text = '';
    _heightController.text = '';
    setState(() {
      resultat = 'Entrez vos données';
    });
  }

  double _result = 0;
  double _msgs = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  _heightController.clear();
                  _weightController.clear();
                  _result = 0;
                  setState(() {});
                },
                icon: Icon(Icons.update))
          ],
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: _heightController,
                  keyboardType: TextInputType.number,

                  decoration: InputDecoration(
                    labelText: 'height in cm',
                    icon: Icon(Icons.trending_up),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _weightController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'weight in kg',
                    hintText: 'Entre Votre Poids en (kg)',
                    icon: Icon(Icons.line_weight),
                  ),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  child: Text(
                    "Calculate",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      calculerImc();
                    }
                  },
                ),
                SizedBox(height: 15),
                Text(
                  _result == null
                      ? "Enter Value"
                      : "${_result.toStringAsFixed(2)}",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 19.4,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                //Text("${resultats(calculateBMI())}"),
                //Text("message()"),
                Text(
                  _msgs == null ? "Enter Value" : "${_msgs.toStringAsFixed(3)}",
                ),
                Text(txt),

                Checkbox(
                    value: isChecked,
                    activeColor: Colors.amber,
                    tristate: true,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked = newBool;
                      });
                    }), //Text(resultat(_result)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  calculateBMI() {
    double height = double.parse(_heightController.text) / 100;
    double weight = double.parse(_weightController.text);

    double heightSquare = height * height;
    double result = weight / heightSquare;

    double _result = result;
    //_msgs = _result.toString();
    //double _msgs = _result;

    setState(() {});
  }





void calculerImc() {
  double poids = double.parse(_weightController.text);
  double taille = double.parse(_heightController.text) / 100.0;
  double imc = (poids / pow(taille, 2));
  setState(() {
    resultat = "IMC = ${imc.toStringAsPrecision(2)}\n";
    if (imc < 18.6)
      resultat += "Poids très bas";
    else if (imc >= 18.6 && imc < 24.9)
      resultat += "Poids idéal";
    else if (imc >= 24.9 && imc < 29.9)
      resultat += "Surpoids";
    else if (imc >= 29.9 && imc < 34.9)
      resultat += "Obésité grade 1";
    else if (imc >= 34.9 && imc < 39.9)
      resultat += "Obésité grade 2";
    else if(imc >= 40)
      resultat += "Obésité grade 3";
  });
}