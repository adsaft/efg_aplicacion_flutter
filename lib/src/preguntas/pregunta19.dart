import 'package:flutter/material.dart';

class Pregunta19Page extends StatefulWidget {
  Pregunta19Page({Key key}) : super(key: key);

  @override
  _Pregunta19PageState createState() => _Pregunta19PageState();
}

class _Pregunta19PageState extends State<Pregunta19Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        title: Center(
          child: Text('El de Deporte'),
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
                    'Mejora a la forma de hablar',
                    style: TextStyle(fontSize: 30),
                  ),
                  color: Colors.red[100],
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
                    'Mejora la capacidad intelectual',
                    style: TextStyle(fontSize: 30),
                  ),
                  color: Colors.grey[100],
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
                    'Mejora la condicion fisica',
                    style: TextStyle(fontSize: 30),
                  ),
                  color: Colors.yellow[100],
                  onPressed: () {
                    Navigator.pushNamed(context, 'pregunta20');
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
                    'Da colesterol',
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
          child: Text('¿Que mejoras da el deporte?',
              style: TextStyle(fontSize: 40)),
          color: Colors.amber[100],
        )
      ],
    ),
  );
}
