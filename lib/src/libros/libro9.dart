import 'package:flutter/material.dart';

class Libro9Page extends StatefulWidget {
  Libro9Page({Key key}) : super(key: key);

  @override
  _Libro9PageState createState() => _Libro9PageState();
}

class _Libro9PageState extends State<Libro9Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        title: Center(
          child: Text('El huevo y la gallina'),
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
                  child: Text('Leido', style: TextStyle(fontSize: 30)),
                  color: Colors.yellow[100],
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
              'El huevo de gallina es uno de los alimentos más consumidos en todo el mundo. Esta clase de huevo no es la única comestible, pues también se pueden cocinar los huevos de otros animales como la codorniz, la pata y el avestruz. Los tamaños son muy diferentes, siendo el de la codorniz el más pequeño y el de avestruz, que puede llegar a pesar hasta 1,3 kg, el más grande.Como todos sabemos las gallinas son ovíparas y ponen un huevo al día. Los huevos pueden estar fecundados o no. Si el gallo y la gallina se aparean, los huevos son fecundados; es entonces cuando la gallina los incuba durante 21 días para proporcionarles calor y protección con su cuerpo. Pasado ese tiempo, nacen los pollitos. Los huevos que compramos en el mercado no han sido fecundados, así que por mucho que los incube una gallina, de ellos nunca nacerá un polluelo.El huevo de gallina suele pesar entre 35 y 60 gramos. La cáscara puede ser blanca o de color pardo, pero en ambos casos la composición y la calidad es la misma. A nivel nutricional es un alimento muy rico en proteínas, vitaminas y minerales, pero lo mejor de todo es que se puede preparar de múltiples formas: frito, a la plancha, cocido, escalfado… ¡y siempre está buenísimo!',
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
