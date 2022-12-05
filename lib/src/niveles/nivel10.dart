import 'package:flutter/material.dart';

class Nivel10Page extends StatefulWidget {
  Nivel10Page({Key key}) : super(key: key);

  @override
  _Nivel10PageState createState() => _Nivel10PageState();
}

class _Nivel10PageState extends State<Nivel10Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Las tijeras'),
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
            _cardPresentacion2(),
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
                    Navigator.pushReplacementNamed(context, 'pregunta37');
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
            padding: EdgeInsets.all(15),
            width: double.infinity,
            child: Text(
              'En todas las casas de hoy en día podemos encontrar tijeras guardadas en algún cajón. Casi todos las hemos utilizado alguna vez ya que es uno de los inventos más sencillos pero más prácticos del ser humano. Las tijeras son un instrumento manual que sirve para cortar. Su mecanismo es muy básico y, aunque parezcan todas iguales, esto no es exactamente así: su diseño varía según su utilidad. Nadie usa unas tijeras de podar árboles para cortarse el pelo ¿verdad? Por eso hoy en día el mercado nos ofrece una gran variedad de modelos: tijeras de oficina, tijeras con punta redondeada para uso infantil, tijeras de cirujano, tijeras para jardinería, tijeras de peluquería, tijeras especiales para zurdos, … Se trata de un invento muy antiguo. Se cree las primeras se fabricaron en Egipto hace unos 3.500 años. Eran de hierro o de bronce y se utilizaban entre otras cosas para cortar pieles de animales. Su aspecto no era como el actual, ya que consistían en dos cuchillas unidas en un extremo por una especie de muelle en forma de C y no tenían huecos para meter los dedos.Los griegos y los romanos también fabricaron tijeras siguiendo ese antiguo modelo. El diseño tal y como lo conocemos ahora, con las cuchillas unidas por el centro y dos agujeros, apareció en el siglo XIV.Durante los siglos XVI y XVII, las tijeras españolas fueron las más apreciadas en toda Europa por su belleza y calidad. También se enviaban tijeras a América, desde el puerto de Sevilla.Desde hace unos doscientos años, las tijeras se fabrican en acero. Hoy en día, gracias a los avances tecnológicos, la calidad del acero es muy alta. Por supuesto, ya no se fabrican de manera artesanal y de una en una en pequeños talleres, sino en grandes fábricas con maquinaria especializada que permite diseños variados y para todos los gustos y necesidades.',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            color: Colors.white,
          )
        ],
      ),
    );
  }

 Widget _cardPresentacion2() {
    return Card(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            width: double.infinity,
            child: Text(
              'Lea el texto completo y para al final responder una serie de preguntas',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            color: Colors.brown[100],
          )
        ],
      ),
    );
  }
