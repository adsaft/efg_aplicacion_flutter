import 'package:flutter/material.dart';

class Pregunta38Page extends StatefulWidget {
  Pregunta38Page({Key key}) : super(key: key);

  @override
  _Pregunta38PageState createState() => _Pregunta38PageState();
}

class _Pregunta38PageState extends State<Pregunta38Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        title: Center(
          child: Text('Las tijeras'),
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
                    'En el siglo XIV',
                    style: TextStyle(fontSize: 30),
                  ),
                  color: Colors.blue[100],
                  onPressed: () {
                    Navigator.pushNamed(context, 'pregunta39');
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
                    'En la Actualidad',
                    style: TextStyle(fontSize: 30),
                  ),
                  color: Colors.yellow[100],
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
                    'En el sigle XVII',
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
                    'Hace 3500 años',
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
              '¿Cuando aparecio el diseño de las tijeras tal como lo conocemos?',
              style: TextStyle(fontSize: 40)),
          color: Colors.pink[100],
        )
      ],
    ),
  );
}