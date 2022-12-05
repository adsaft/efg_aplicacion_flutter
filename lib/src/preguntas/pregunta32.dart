import 'package:flutter/material.dart';

class Pregunta32Page extends StatefulWidget {
  Pregunta32Page({Key key}) : super(key: key);

  @override
  _Pregunta32PageState createState() => _Pregunta32PageState();
}

class _Pregunta32PageState extends State<Pregunta32Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        title: Center(
          child: Text('El leopardo'),
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
                      backgroundColor: Colors.green[100],
                      minimumSize: Size(300, 100)),
                  child: Text(
                    'El leopardo solo come animales pequeños y grandes',
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
                      backgroundColor: Colors.yellow[100],
                      minimumSize: Size(300, 100)),
                  child: Text(
                    'Puede nadar',
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
                      backgroundColor: Colors.blueGrey[100],
                      minimumSize: Size(300, 100)),
                  child: Text(
                    'Caza en la noche',
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
                      backgroundColor: Colors.blue[100],
                      minimumSize: Size(300, 100)),
                  child: Text(
                    'Vive en zonas polares',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'bien');
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
          child: Text('¿Que no hace el leopardo?',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 40)),
          color: Colors.purple[100],
        )
      ],
    ),
  );
}
