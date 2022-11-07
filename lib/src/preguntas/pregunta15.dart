import 'package:flutter/material.dart';

class Pregunta15Page extends StatefulWidget {
  Pregunta15Page({Key key}) : super(key: key);

  @override
  _Pregunta15PageState createState() => _Pregunta15PageState();
}

class _Pregunta15PageState extends State<Pregunta15Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        title: Center(
          child: Text('El lagarto está llorando'),
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
                      backgroundColor: Colors.red[100],
                      minimumSize: Size(300, 100)),
                  child: Text(
                    'Porque estan asustados',
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[100],
                      minimumSize: Size(300, 100)),
                  child: Text(
                    'De felicidad',
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow[100],
                      minimumSize: Size(300, 100)),
                  child: Text(
                    'Porque se les callo su anillo',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'pregunta16');
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
                    'Porque se perdieron',
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
          child: Text('¿Por qué lloran el lagarto y la lagarta?',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 40)),
          color: Colors.amber[100],
        )
      ],
    ),
  );
}
