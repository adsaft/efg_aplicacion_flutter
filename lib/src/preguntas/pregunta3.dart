import 'package:flutter/material.dart';

class Pregunta3Page extends StatefulWidget {
  Pregunta3Page({Key key}) : super(key: key);

  @override
  _Pregunta3PageState createState() => _Pregunta3PageState();
}

class _Pregunta3PageState extends State<Pregunta3Page> {
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
                    'En la Parte mas Alta de la Ciudad',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),textAlign: TextAlign.center,
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
                      backgroundColor: Colors.orange[100],
                      minimumSize: Size(300, 100)),
                  child: Text(
                    'En Medio de un Jardin',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),textAlign: TextAlign.center,
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
                      backgroundColor: Colors.cyan[100],
                      minimumSize: Size(300, 100)),
                  child: Text(
                    'En el Palacio de la Despreocupacion',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'pregunta4');
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
                    'En la Parte mas Alta de una Montaña',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),textAlign: TextAlign.center,
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
          child: Text('¿Dónde vivía el Príncipe Feliz cuando estaba vivo?',
              style: TextStyle(fontSize: 40)),
          color: Colors.orange[100],
        )
      ],
    ),
  );
}
