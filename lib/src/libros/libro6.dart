import 'package:flutter/material.dart';

class Libro6Page extends StatefulWidget {
  Libro6Page({Key key}) : super(key: key);

  @override
  _Libro6PageState createState() => _Libro6PageState();
}

class _Libro6PageState extends State<Libro6Page> {
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
                child: ElevatedButton(
                  child: Text('Leido',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.yellow[100],
                      )),
                  onPressed: () {
                    Navigator.pushNamed(context, 'libros');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardPresentacion1() {
    return Card(
      child: Column(
        children: <Widget>[
          Container(
            child: Text(
              'Mucha gente piensa que las arañas son insectos, pero en realidad, se trata de dos familias muy distintas y que no tienen nada que ver una con otra. Vamos a ver algunas de sus diferencias: Las arañas tienen ocho patas. Su cuerpo se divide en dos partes: una cabeza unida al tórax, y el abdomen. Los arácnidos nunca tienen alas así que son incapaces de volar y tampoco tienen antenas. Poseen la curiosa capacidad de producir hilos de seda para fabricar telas que usan para atrapar insectos y alimentarse, ya que son animales carnívoros, aunque hay que tener en cuenta que no todas las arañas fabrican telas.Los insectos, en cambio, tienen seis patas. Su cuerpo no se divide en dos partes sino en tres, porque su cabeza está separada del tórax. La mayoría de los insectos poseen alas que les permiten volar y todos tienen antenas. La alimentación de los insectos es mucho más variada que la de las arañas porque si bien es cierto que hay insectos que también son carnívoros y cazan otros animales, según la especie su comida varía mucho. Unos se alimentan de hojas, otros de semillas, otros comen frutos, otros raíces, otros madera… y algunos son omnívoros, es decir, comen de todo.',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.justify,
              maxLines: null,
            ),
            color: Colors.purple[100],
          )
        ],
      ),
    );
  }
}
