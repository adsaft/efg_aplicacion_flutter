import 'package:flutter/material.dart';

class Nivel4Page extends StatefulWidget {
  Nivel4Page({Key key}) : super(key: key);

  @override
  _Nivel4PageState createState() => _Nivel4PageState();
}

class _Nivel4PageState extends State<Nivel4Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('El lagarto está llorando'),
        centerTitle: true,
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
                      backgroundColor: Colors.yellow[100],
                      minimumSize: Size(300, 100)),
                  child: Text('Listo',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      )),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'pregunta13');
                  },
                ),
              ),
            ),
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
          child: Text(
            'El lagarto está llorando.                     La lagarta está llorando.                      El lagarto y la lagarta con delantalitos blancos.                         Han perdido sin querer su anillo de desposados.                   ¡Ay! su anillito de plomo,                              ¡ay! su anillito plomado Un cielo grande y sin gente monta en su globo a los pájaros.                     El sol, capitán redondo,lleva un chaleco de raso.                 ¡Miradlos qué viejos son!                                         ¡Qué viejos son los lagartos!                            ¡Ay, cómo lloran y lloran!¡Ay, ay, cómo están llorando!',
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
            maxLines: null,
          ),
          color: Colors.purple[100],
        )
      ],
    ),
  );
}
