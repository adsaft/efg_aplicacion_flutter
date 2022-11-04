import 'package:flutter/material.dart';

class Nivel8Page extends StatefulWidget {
  Nivel8Page({Key key}) : super(key: key);

  @override
  _Nivel8PageState createState() => _Nivel8PageState();
}

class _Nivel8PageState extends State<Nivel8Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text('El leopardo'),
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
                  child: Text('Listo', style: TextStyle(fontSize: 30)),
                  color: Colors.yellow[100],
                  onPressed: () {
                    Navigator.pushNamed(context, 'pregunta29');
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
              'El leopardo es un precioso animal que pertenece a la familia de los grandes felinos. Su pelaje es de color amarillo salpicado con manchas negras. Cuando su pelo es totalmente oscuro, se le conoce con el nombre de pantera.Los leopardos son capaces de vivir en lugares muy diferentes, como en los bosques, en las montañas, en zonas casi desérticas… ¡Se adaptan a casi todo!Son animales muy fuertes, ágiles y flexibles. Pasan gran parte de su tiempo subidos a los árboles. Allí no sólo descansan, sino que desde las alturas vigilan a sus posibles presas y saltan sobre ellas en un abrir y cerrar de ojos en cuanto tienen la oportunidad. Suelen cazar en la oscuridad de la noche. El leopardo se alimenta de monos, conejos, ciervos y otros muchos animales, tanto grandes como pequeños. Sus patas son muy robustas y tiene unas mandíbulas tan potentes que es capaz de sujetar con ellas a sus presas y transportarlas hasta las ramas del árbol con la boca. Allí arriba guarda la comida durante días asegurándose de que esté a salvo y nadie le robe el botín. Es un animal tan inteligente y tiene tan perfeccionado su sistema de caza, que es capaz de hacerse el dormido para que otros animales más inocentes y curiosos se acerquen y saltar sobre ellos cuando los tiene al lado. También es un buen nadador e incluso puede llegar a pescar peces.Hay quien confunde el leopardo con el guepardo por su parecido pelaje a manchas, pero son animales diferentes. El leopardo es más grande pero en cambio, el guepardo es más veloz.',
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
