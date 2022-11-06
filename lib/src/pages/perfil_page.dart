import 'package:flutter/material.dart';

class PerfilPage extends StatefulWidget {
  PerfilPage({Key key}) : super(key: key);

  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('Perfil'),
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
              Center(
                child: Image.asset(
                  'lib/src/imagenes/Foto.jpg',
                ),
              ),
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
        Container(padding: EdgeInsets.all(10.0), child: Text('Nombre: Miguel'))
      ],
    ),
  );
}

Widget _cardPresentacion2() {
  return Card(
    child: Column(
      children: <Widget>[
        Container(
            padding: EdgeInsets.all(10.0), child: Text('Contraseña: 12345'))
      ],
    ),
  );
}
