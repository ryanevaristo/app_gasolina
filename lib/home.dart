import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gasolina ou Álcool"),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Image(image: AssetImage("lib/images/logo.png")),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 18),
              child: Text(
                "Saiba qual a melhor opção para o abastecimento do seu carro",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(labelText: "Preço do Àlcool: RS 3.20"),
              style: TextStyle(fontSize: 20),
              controller: _controllerAlcool,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(labelText: "Preço da Gasolina: RS 5.24"),
              style: TextStyle(fontSize: 20),
              controller: _controllerGasolina,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.all(15),
                onPressed: () {},
                child: Text(
                  "Calcular",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Resultado",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
