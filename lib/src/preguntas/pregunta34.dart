import 'package:flutter/material.dart';

class Pregunta34Page extends StatefulWidget {
  Pregunta34Page({Key key}) : super(key: key);

  @override
  _Pregunta34PageState createState() => _Pregunta34PageState();
}

class _Pregunta34PageState extends State<Pregunta34Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        title: Center(
          child: Text('El huevo y la gallina'),
        ),
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
            Divider(),
            _cardPresentacion1(),
            Divider(),
            ButtonTheme(
              minWidth: 300.0,
              height: 150.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Center(
                child: RaisedButton(
                  child: Text(
                    'El huevo se cocera',
                    style: TextStyle(fontSize: 30),
                  ),
                  color: Colors.blue[100],
                  onPressed: () {
                    Navigator.pushNamed(context, 'mal');
                  },
                ),
              ),
            ),
            Divider(),
            ButtonTheme(
              minWidth: 300.0,
              height: 150.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Center(
                child: RaisedButton(
                  child: Text(
                    'Nada porque no a sido fecuandado',
                    style: TextStyle(fontSize: 30),
                  ),
                  color: Colors.yellow[100],
                  onPressed: () {
                    Navigator.pushNamed(context, 'pregunta35');
                  },
                ),
              ),
            ),
            Divider(),
            ButtonTheme(
              minWidth: 300.0,
              height: 150.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Center(
                child: RaisedButton(
                  child: Text(
                    'Saldria un pollito pasando los 21 dias',
                    style: TextStyle(fontSize: 30),
                  ),
                  color: Colors.brown[100],
                  onPressed: () {
                    Navigator.pushNamed(context, 'mal');
                  },
                ),
              ),
            ),
            Divider(),
            ButtonTheme(
              minWidth: 300.0,
              height: 150.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Center(
                child: RaisedButton(
                  child: Text(
                    'El huevo se rompera',
                    style: TextStyle(fontSize: 30),
                  ),
                  color: Colors.green[100],
                  onPressed: () {
                    Navigator.pushNamed(context, 'mal');
                  },
                ),
              ),
            ),
            Divider(),
          ],
        ),
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
              '¿Qué pasará si incubamos un huevo que hemos comprado en el mercado?',
              style: TextStyle(fontSize: 40)),
          color: Colors.pink[100],
        )
      ],
    ),
  );
}
