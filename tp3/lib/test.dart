import 'dart:math';
import 'package:flutter/material.dart';


main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    fontFamily: 'Sen',
  ),
  home: IMC(),
));
class IMC extends StatefulWidget {
  const IMC({Key? key}) : super(key: key);

  @override
  State<IMC> createState() => _IMCState();
}

class _IMCState extends State<IMC> {
  final formKey = GlobalKey<FormState>();
  TextEditingController poidsController =TextEditingController();
  TextEditingController tailleController =TextEditingController();
  String resultat ="";

  void initState() {
    super.initState();
    resetFields();
  }
  void resetFields() {
    poidsController.text = '';
    tailleController.text = '';
    setState(() {
      resultat = 'Entrez vos données';
    });
  }
  void calculerImc() {
    double poids = double.parse(poidsController.text);
    double taille = double.parse(tailleController.text) / 100.0;
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
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 100,),
              Text("Calculateur IMC",
                style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),
              Expanded(
                child: ListView(
                    children:[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                        margin: EdgeInsets.fromLTRB(15,0,15,0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Form(
                          key: formKey,
                          child: Column(
                            children: [
                              SizedBox(height: 40,),
                              TextFormField(
                                keyboardType: TextInputType.number,
                                controller: poidsController,
                                validator: (value) {
                                  return value!.isEmpty ? "Entrez un Poids!" : null;
                                },
                                decoration: InputDecoration(
                                    labelText: 'Poids (kg)',
                                    hintText: 'Entre Votre Poids en (kg)',
                                    hintStyle: TextStyle(color: Colors.black54),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    )
                                ),
                              ),
                              SizedBox(height: 40,),
                              TextFormField(
                                keyboardType: TextInputType.number,
                                controller: tailleController,
                                validator: (value) {
                                  return value!.isEmpty ? "Entrez un Taille!" : null;
                                },
                                decoration: InputDecoration(
                                    labelText: 'Taille (cm)',
                                    hintText: 'Entre Votre Taille en (cm)',
                                    hintStyle: TextStyle(color: Colors.black54),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    )
                                ),
                              ),
                              SizedBox(height: 40,),
                              ElevatedButton(
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    calculerImc();
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.lightBlueAccent,
                                    padding: EdgeInsets.symmetric(horizontal: 50,vertical: 20),

                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    )
                                ),
                                child: Text(
                                  'Calculer',
                                  style: TextStyle(
                                    fontFamily: 'Sen',
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15,10,15,0),
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(resultat,
                          style: TextStyle(
                            fontSize: 23.0,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


