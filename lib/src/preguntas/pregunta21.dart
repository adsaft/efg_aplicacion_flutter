import 'package:flutter/material.dart';

class Pregunta21Page extends StatefulWidget {
  Pregunta21Page({Key key}) : super(key: key);

  @override
  _Pregunta21PageState createState() => _Pregunta21PageState();
}

class _Pregunta21PageState extends State<Pregunta21Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        title: Center(
          child: Text('Arañas e insectos'),
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
              minWidth: 300.0,
              height: 150.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[100],
                      minimumSize: Size(300, 100)),
                  child: Text(
                    'Insectos',
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
            ButtonTheme(
              minWidth: 300.0,
              height: 150.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[100],
                      minimumSize: Size(300, 100)),
                  child: Text(
                    'Aracnidos',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'pregunta22');
                  },
                ),
              ),
            ),
            SizedBox(height: 30),
            ButtonTheme(
              minWidth: 300.0,
              height: 150.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow[100],
                      minimumSize: Size(300, 100)),
                  child: Text(
                    'Reptiles',
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
            ButtonTheme(
              minWidth: 300.0,
              height: 150.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[100],
                      minimumSize: Size(300, 100)),
                  child: Text(
                    'Anfibios',
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
          child: Text('¿Las Arañas son?',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 40)),
          color: Colors.amber[100],
        )
      ],
    ),
  );
}
