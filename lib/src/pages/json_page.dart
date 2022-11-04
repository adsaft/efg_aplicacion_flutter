import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class JsonPage extends StatefulWidget {
  @override
  _JsonPageState createState() => _JsonPageState();
}

dynamic tLista = "";

class _JsonPageState extends State<JsonPage> {
  String url = "http:192.168.1.68/json1/formatojson.php/";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Json'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 0.19),
          image: DecorationImage(
            image: AssetImage("lib/src/imagenes/Fondo.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Conexion Remota : JSON"),
            Center(
              child: Text(tLista),
            )
          ],
        ),
      ),
    );
  }

  Future<dynamic> laLista() async {
    final response =
        await http.get(Uri.parse("http://192.168.1.66/json1/formatojson.php"));
    if (response.statusCode == 200) {
      print(response.body.toString());
      setState(
        () {
          tLista = response.body.toString();
        },
      );
    } else {
      throw Exception("Error en comunicacion");
    }
  }

  @override
  void initState() {
    laLista();
    super.initState();
  }
}
