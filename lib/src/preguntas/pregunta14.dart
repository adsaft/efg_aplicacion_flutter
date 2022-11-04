import 'package:flutter/material.dart';

class Pregunta14Page extends StatefulWidget {
  Pregunta14Page({Key key}) : super(key: key);

  @override
  _Pregunta14PageState createState() => _Pregunta14PageState();
}

class _Pregunta14PageState extends State<Pregunta14Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
                child: ElevatedButton(
                  child: Text(
                    'De oro',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue[100],
                    ),
                  ),
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
                child: ElevatedButton(
                  child: Text(
                    'De plomo',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.yellow[100],
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'pregunta15');
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
                child: ElevatedButton(
                  child: Text(
                    'De plata',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.brown[100],
                    ),
                  ),
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
                child: ElevatedButton(
                  child: Text(
                    'De papel',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.green[100],
                    ),
                  ),
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
          child: Text('¿De qué material era el anillo?',
              style: TextStyle(fontSize: 40)),
          color: Colors.pink[100],
        )
      ],
    ),
  );
}
