import 'package:flutter/material.dart';

class Nivel5Page extends StatefulWidget {
  Nivel5Page({Key key}) : super(key: key);

  @override
  _Nivel5PageState createState() => _Nivel5PageState();
}

class _Nivel5PageState extends State<Nivel5Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text('El Deporte'),
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
                  child: Text('Listo',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.yellow[100],
                      )),
                  onPressed: () {
                    Navigator.pushNamed(context, 'pregunta17');
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
              'Practicar deporte es muy importante para el ser humano, sea cual sea su edad. Consiste en dedicar una parte de nuestro tiempo a realizar una actividad física, es decir, a hacer ejercicio moviendo las partes de nuestro cuerpo. Cuando hacemos deporte nos divertimos y pasamos un buen rato.Hay deportes individuales como la natación y deportes en grupo como el fútbol. Todos ellos tienen una serie de normas que hay que respetar y cumplir. Son las reglas del juego. Cuando se practica deporte para conseguir un trofeo o una medalla, hablamos de deportes de competición. En este caso, el deportista debe entrenar duro para alcanzar el objetivo, que es ganar. El deporte tiene muchos beneficios. Nos ayuda a fortalecer los músculos y los huesos, y en general mejora nuestra condición física y el aspecto de nuestro cuerpo. Además, hacer ejercicio nos entretiene y nos relaja, así tendremos buen humor durante el día, estaremos más concentrados en clase y dormiremos mejor por las noches. Los deportes nos enseñan a esforzarnos por las cosas y a intentar superar las dificultades. También aprendemos a jugar con los demás, a respetar al contrincante y que aunque no siempre ganemos, lo importante es disfrutar del juego.',
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
