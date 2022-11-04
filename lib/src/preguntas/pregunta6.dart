import 'package:flutter/material.dart';

class Pregunta6Page extends StatefulWidget {
  Pregunta6Page({Key key}) : super(key: key);

  @override
  _Pregunta6PageState createState() => _Pregunta6PageState();
}

class _Pregunta6PageState extends State<Pregunta6Page> {
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
                    'Pasteles de Merengue',
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
                    'Pasteles de nata',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.yellow[100],
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
                    'Pasteles de Arroz',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.brown[100],
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'pregunta7');
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
                    'Pasteles de frutas',
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
          child: Text('¿Qué regalo recibió la madre en el banquete?',
              style: TextStyle(fontSize: 40)),
          color: Colors.pink[100],
        )
      ],
    ),
  );
}
