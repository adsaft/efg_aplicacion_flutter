import 'package:flutter/material.dart';

class Pregunta7Page extends StatefulWidget {
  Pregunta7Page({Key key}) : super(key: key);

  @override
  _Pregunta7PageState createState() => _Pregunta7PageState();
}

class _Pregunta7PageState extends State<Pregunta7Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        title: Center(
          child: Text('El Sol y la Luna'),
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
                    'En una casa en un valle',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue[100],
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'pregunta8');
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
                    'En una casa en la cima de un montaña',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.orange[100],
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
                    'En una casa en un arbol',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.cyan[100],
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
                    'En una casa en una gran ciudad',
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
          child: Text('¿Dónde vivían los dos hermanos y su madre?',
              style: TextStyle(fontSize: 40)),
          color: Colors.orange[100],
        )
      ],
    ),
  );
}
