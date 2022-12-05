import 'package:flutter/material.dart';

class Libro4Page extends StatefulWidget {
  Libro4Page({Key key}) : super(key: key);

  @override
  _Libro4PageState createState() => _Libro4PageState();
}

class _Libro4PageState extends State<Libro4Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        title: Text('El lagarto está llorando'),
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
                      backgroundColor: Colors.yellow[100],
                      minimumSize: Size(300, 100)),
                  child: Text('Leido', 
                  style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),),
                  
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'libros');
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
          padding: EdgeInsets.all(10),
            width: double.infinity,
          child: Text(
            'El lagarto está llorando.La lagarta está llorando.El lagarto y la lagarta con delantalitos blancos. Han perdido sin querer su anillo de desposados.¡Ay! su anillito de plomo,¡ay! su anillito plomado Un cielo grande y sin gente monta en su globo a los pájaros.El sol, capitán redondo,lleva un chaleco de raso.¡Miradlos qué viejos son!¡Qué viejos son los lagartos!¡Ay, cómo lloran y lloran!¡Ay, ay, cómo están llorando!',
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
            maxLines: null,
          ),
          color: Colors.white,
        )
      ],
    ),
  );
}
