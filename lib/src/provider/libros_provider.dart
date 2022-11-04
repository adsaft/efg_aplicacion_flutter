import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class LibrosProvider extends ChangeNotifier {
  LibrosProvider() {
    this.regresarLibros();
  }
  regresarLibros() async {
    var response = await http
        .get(Uri.parse('https://pizzeriaitaliany.000webhostapp.com/'));
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }
}
