import 'package:efg_aplicacion/src/pages/niveles_page.dart';
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
                    child: Text(
                      'Volver a intentar',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.green[100],
                      ),
                    ),
                    onPressed: () {
                    Navigator.of(context).pushReplacement(
                    new MaterialPageRoute(builder: (BuildContext context) {
                    return new NivelesPage();
                    }));},
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
