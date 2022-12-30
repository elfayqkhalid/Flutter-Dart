import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(Imc());

class Imc extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Imc> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  String resultat = 'Declarez vos données';

  void resetFields() {
    _weightController.text = '';
    _heightController.text = '';
    setState(() {
      resultat = 'Declarez vos données';
    });
  }

  void calculerImc() {
    double poids = double.parse(_weightController.text);
    double taille = double.parse(_heightController.text) / 100.0;
    double imc = (poids / pow(taille, 2));
    setState(() {
      resultat = "Votre IMC est : ${imc.toStringAsPrecision(2)}\n\n";
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
      else if (imc >= 40) resultat += "Obésité grade 3";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculateur IMC'),
          centerTitle: true,
          backgroundColor: Colors.blue,
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  resetFields();
                },
                icon: const Icon(Icons.update))
          ],
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  const Icon(Icons.account_circle_rounded,
                      color: Colors.blue, size: 200),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: _heightController,
                    decoration: const InputDecoration(
                      labelText: 'Taille cm',
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: _weightController,
                    decoration: const InputDecoration(
                      labelText: 'Poids (Kg)',
                      hintText: "Entre Votre Poids en (kg)",
                    ),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        calculerImc();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 150, vertical: 20),
                    ),
                    child: const Text(
                      'Calculer',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  const Text(
                    'Calculer',
                    style: TextStyle(
                      fontFamily: 'Sen',
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      resultat,
                      style: const TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
