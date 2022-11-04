import 'package:efg_aplicacion/src/provider/libros_provider.dart';
import 'package:flutter/material.dart';

class BaseDeDatosPage extends StatefulWidget {
  BaseDeDatosPage({Key key}) : super(key: key);

  @override
  _BaseDeDatosPage createState() => _BaseDeDatosPage();
}

class _BaseDeDatosPage extends State<BaseDeDatosPage> {
  @override
  Widget build(BuildContext context) {
    LibrosProvider();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Bienvenido a la Aplicacion EFG!'),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.19),
            image: DecorationImage(
              image: AssetImage("lib/src/imagenes/Fondo.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}
