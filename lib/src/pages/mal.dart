import 'package:flutter/material.dart';

class MalPage extends StatefulWidget {
  MalPage({Key key}) : super(key: key);

  @override
  _MalPageState createState() => _MalPageState();
}

class _MalPageState extends State<MalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        title: Center(
          child: Text('Respuesta'),
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
                  child: RaisedButton(
                    child: Text(
                      'Volver a intentar',
                      style: TextStyle(fontSize: 40),
                    ),
                    color: Colors.green[100],
                    onPressed: () {
                      Navigator.pushNamed(context, 'empezar');
                    },
                  ),
                ),
              ),
            ]),
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
          child: Text(
            'Los sentimos incorrecta.       Vuelve a intentarlo',
            style: TextStyle(fontSize: 40),
            textAlign: TextAlign.justify,
          ),
          color: Colors.purple[100],
        ),
      ],
    ),
  );
}
