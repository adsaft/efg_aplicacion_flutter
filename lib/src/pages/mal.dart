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
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[100],
                        minimumSize: Size(300, 100)),
                    child: Text(
                      'Continuar',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'niveles');
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
            'Huy estuvo cerca. Vuelve a intentarlo',
            style: TextStyle(fontSize: 40),
            textAlign: TextAlign.center,
          ),
          color: Colors.purple[100],
        ),
      ],
    ),
  );
}
