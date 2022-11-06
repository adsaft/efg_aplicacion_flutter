import 'package:flutter/material.dart';

class AyudaPage extends StatefulWidget {
  AyudaPage({Key key}) : super(key: key);

  @override
  _AyudaPageState createState() => _AyudaPageState();
}

class _AyudaPageState extends State<AyudaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Bienvenido a La ayuda de EFG'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/src/imagenes/Fondo.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            children: <Widget>[
              SizedBox(height: 30),
              _cardPresentacion1(),
              SizedBox(height: 30),
              _cardPresentacion2(),
              SizedBox(height: 30),
            ]),
      ),
    );
  }
}

Widget _cardPresentacion1() {
  return Card(
    child: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text(
              'Si Quisieras comentar un error manda un Correo a Miguel.yuen.04.2@gmail.com',
              style: TextStyle(fontSize: 40)),
          color: Colors.yellow[100],
        )
      ],
    ),
  );
}

Widget _cardPresentacion2() {
  return Card(
    child: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text(
              'Si Quisieras comentar un error o preguntar algo a un desarrollador marca al 9981551183',
              style: TextStyle(fontSize: 40)),
          color: Colors.yellow[100],
        )
      ],
    ),
  );
}
