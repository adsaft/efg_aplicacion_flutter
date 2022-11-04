import 'package:flutter/material.dart';

class PruebaPage extends StatefulWidget {
  PruebaPage({Key key}) : super(key: key);

  @override
  _PruebaPageState createState() => _PruebaPageState();
}

class _PruebaPageState extends State<PruebaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(
            child: Text('El Principito Feliz'),
          ),
        ),
        body: Container(
            decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/src/imagenes/Fondo.jpg"),
            fit: BoxFit.cover,
          ),
        )));
  }
}
