import 'package:flutter/material.dart';

class Pregunta12Page extends StatefulWidget {
  Pregunta12Page({Key key}) : super(key: key);

  @override
  _Pregunta12PageState createState() => _Pregunta12PageState();
}

class _Pregunta12PageState extends State<Pregunta12Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        title: Center(
          child: Text('¿Qué le pasa a la gallina?'),
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
                    '8 años',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.grey[100],
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
                    '6 años',
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
                    '5 años',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blueGrey[100],
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
                    '10 años',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue[100],
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'bien');
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
          child: Text('¿Cuántos años tiene Natalia?',
              style: TextStyle(fontSize: 40)),
          color: Colors.purple[100],
        )
      ],
    ),
  );
}
