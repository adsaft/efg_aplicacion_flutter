import 'dart:convert';
//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My app title',
        home: Scaffold(
            appBar: AppBar(title: Text('My app bar title')),
            body: Center(child: Text('Hola mundo!'))));
  }
}

void Get_Books() {
  String url = "https://api.thecatapi.com/v1/categories";

  Future<dynamic> _getListado() async {
    final respuesta = await http.get(Uri.parse(url));

    if (respuesta.statusCode == 200) {
      return jsonDecode(respuesta.body);
    } else {
      print("Error con la respuesta");
    }
  }
}
