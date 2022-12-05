import 'package:flutter/material.dart';

class Pregunta27Page extends StatefulWidget {
  Pregunta27Page({Key key}) : super(key: key);

  @override
  _Pregunta27PageState createState() => _Pregunta27PageState();
}

class _Pregunta27PageState extends State<Pregunta27Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        title: Center(
          child: Text('El Caballito de Mar'),
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
                    'El Caballito de Mar es ligero',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'pregunta28');
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
                    'El Caballito de Mar es pesado',
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
                    'El Caballito de Mar puede ser una mascota',
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
                      backgroundColor: Colors.purple[100],
                      minimumSize: Size(300, 100)),
                  child: Text(
                    'El Caballito de Mar es buen nadador',
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
          child: Text('¿Que es verdad?',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 40)),
          color: Colors.orange[100],
        )
      ],
    ),
  );
}
