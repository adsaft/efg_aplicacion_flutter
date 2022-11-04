import 'package:flutter/material.dart';

class Pregunta40Page extends StatefulWidget {
  Pregunta40Page({Key key}) : super(key: key);

  @override
  _Pregunta40PageState createState() => _Pregunta40PageState();
}

class _Pregunta40PageState extends State<Pregunta40Page> {
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
                    'Cristal',
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
                    'Cobre',
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
                    'Acero',
                    style: TextStyle(fontSize: 30),
                  ),
                  color: Colors.brown[100],
                  onPressed: () {
                    Navigator.pushNamed(context, 'bien');
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
                    'Mardera',
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
          child: Text('¿De que material se fabrican las tijeras hoy en dia?',
              style: TextStyle(fontSize: 40)),
          color: Colors.pink[100],
        )
      ],
    ),
  );
}
