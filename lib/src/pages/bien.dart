import 'package:flutter/material.dart';

class BienPage extends StatefulWidget {
  BienPage({Key key}) : super(key: key);

  @override
  _BienPageState createState() => _BienPageState();
}

class _BienPageState extends State<BienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        centerTitle: true,
        title:
        Text('Respuesta'),

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
                      'Siguiente Nivel',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.green[100],
                      ),
                    ),
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
            'Muy Bien puedes pasar al Siguiente Nivel.',
            style: TextStyle(fontSize: 40),
            textAlign: TextAlign.justify,
          ),
          color: Colors.blue[100],
        ),
      ],
    ),
  );
}
