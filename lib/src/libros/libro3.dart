import 'package:flutter/material.dart';

class Libro3Page extends StatefulWidget {
  Libro3Page({Key key}) : super(key: key);

  @override
  _Libro3PageState createState() => _Libro3PageState();
}

class _Libro3PageState extends State<Libro3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        title: Text('¿Qué le pasa a la gallina?'),
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
}

Widget _cardPresentacion1() {
  return Card(
    child: Column(
      children: <Widget>[
        Container(
          child: Text(
            'Natalia tenía 10 años, y desde que tenía 6 pasaba los veranos en la granja de sus abuelos. A Natalia le gustaban mucho los animales y disfrutaba las vacaciones ayudando a sus abuelos a cuidarlos. Era una granja rodeada de campo para que las vacas y las ovejas pudieran comer y pasear durante el día. Las dos yeguas y el burrito de su abuelo se refugiaban del sol dentro del establo. Había un gallinero repleto de ruidosas gallinas, algunas se escondían a poner sus huevos en una caseta y otras paseaban y picoteaban, también vivía allí un gallo con la cola de colores que les despertaba todas las mañanas. En un lateral de la casa, su abuela y su abuelo habían sembrado lechugas, tomates, zanahorias y unas enormes sandías, y en un extremo crecía fuerte un limonero que sus abuelos habían plantado 6 años antes. La tarea favorita de Natalia era la de dar alfalfa y zanahorias a los caballos y el burrito, y, aunque el gallo le daba un poco de miedo, era muy valiente y también entraba en el gallinero para recoger los huevos que las gallinas habían puesto y repartía el maíz para que comieran. Una mañana Natalia entró en el gallinero como de costumbre, repartió el maíz y todas las gallinas y el gallo corrieron a comer. La niña entro en la caseta y empezó a recoger los huevos, poniéndolos con mucho cuidado en un cubo. Entonces observó que una de las gallinas estaba muy quieta en un rincón sobre un montoncito de paja y Natalia se preocupó porque no había ido a comer como el resto ¡quizás estaba enferma! La niña fue corriendo a llamar a sus abuelos y les explicó lo que pasaba, todos volvieron al gallinero y la vieron. Los abuelos se quedaron más tranquilos ¿qué pasaba? “La gallina está bien, pero no podemos molestarla sólo tenemos que esperar unas semanas” le dijo su abuela. Pero Natalia no estaba tan tranquila, cada vez que entraba al gallinero encontraba a la gallina allí sentada ¿por qué pasaba tanto tiempo escondida? Natalia dejó pasar los días y seguía cuidando del resto de animales como siempre hacía. Pasaron todos los días que tuvieron que pasar, hasta que esos días sumaron 3 semanas. Natalia volvió al gallinero, echó el maíz en las cajitas y todas las gallinas y el gallo corrieron a comer. De nuevo todas las gallinas menos aquella que siempre descansaba en el rincón. Pero aquél día el ruido del gallinero era diferente ¿qué era aquello que escuchaba? La niña se asomó a la caseta y encontró junto a la gallina ¡seis pollitos! Estaban todos juntitos sobre el montón de paja, eran muy pequeños, con plumas finas y amarillas y piaban sin parar. Como el día que se preocupó por la gallina, Natalia corrió muy contenta a avisar a sus abuelos ¡La gallina había tenido pollitos! ¿Qué había pasado todo ese tiempo? “La gallina ha estado cuidando de los huevos durante 3 semanas, dándoles calor para que dentro de cada huevo creciera un pollito hasta que estuvieran tan grandes y fuertes que pudieran romper el cascarón y salir”. Natalia y sus abuelos los dejaron descansar y al cuidado de su madre el resto del día. Todos pasaron el verano observando cómo cada día y poco a poco los pollitos crecían, comían y exploraban. ¡Qué verano tan divertido!',
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
