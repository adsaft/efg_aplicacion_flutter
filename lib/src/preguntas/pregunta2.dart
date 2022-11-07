import 'package:flutter/material.dart';

class Pregunta2Page extends StatefulWidget {
  Pregunta2Page({Key key}) : super(key: key);

  @override
  _Pregunta2PageState createState() => _Pregunta2PageState();
}

class _Pregunta2PageState extends State<Pregunta2Page> {
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
            SizedBox(height: 30),
            _cardPresentacion1(),
            SizedBox(height: 30),
            ButtonTheme(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[100],
                      minimumSize: Size(300, 100)),
                  child: Text(
                    'Que el Principe Feliz estaba llorando',
                    style: TextStyle(
                      fontSize: 30,
                    color: Colors.black
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'pregunta3');
                  },
                ),
              ),
            ),
            SizedBox(height: 30),
            ButtonTheme(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow[100],
                      minimumSize: Size(300, 100)),
                  child: Text(
                    'Que hacia mucho sol',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'mal');
                  },
                ),
              ),
            ),
            SizedBox(height: 30),
            ButtonTheme(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor:Colors.brown[100],
                      minimumSize: Size(300, 100)),
                  child: Text(
                    'Que estaba lloviendo',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'mal');
                  },
                ),
              ),
            ),
            SizedBox(height: 30),
            ButtonTheme(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[100],
                      minimumSize: Size(300, 100)),
                  child: Text(
                    'Que el Pricipito Feliz estaba riendose',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'mal');
                  },
                ),
              ),
            ),
            SizedBox(height: 30),
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
          child: Text('¿Qué vio la Golondrina al mirar hacia arriba?',
          textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40)),
          color: Colors.pink[100],
        )
      ],
    ),
  );
}
