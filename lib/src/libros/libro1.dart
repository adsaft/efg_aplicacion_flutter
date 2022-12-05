import 'package:flutter/material.dart';

class Libro1Page extends StatefulWidget {
  Libro1Page({Key key}) : super(key: key);

  @override
  _Libro1PageState createState() => _Libro1PageState();
}

class _Libro1PageState extends State<Libro1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        title: Text('El Principito Feliz'),
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
                      )
                          ),
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

  Widget _cardPresentacion1() {
    return Card(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: Text(
              'En la parte más alta de la ciudad, sobre una columnita, se alzaba la estatua del Príncipe Feliz. Estaba toda revestida de madre selva de oro fino. Tenía los ojos con dos centelleantes zafiros y un gran rubí rojo ardía en el puño de su espada.Una noche voló una golondrinita sin descanso hacia la ciudad. Entonces divisó la estatua sobre la columnita.-Voy a cobijarme allí -gritó- El sitio es bonito. Hay mucho aire fresco. Y se dejó caer precisamente entre los pies del Príncipe Feliz.Pero al ir a colocar su cabeza bajo el ala, he aquí que le cayó encima una pesada gota de agua. Y después otra.-¿Para qué sirve una estatua si no resguarda de la lluvia? -dijo la Golondrina-. Voy a buscar un buen copete de chimenea.Y se dispuso a volar más lejos. Pero antes de que abriese las alas, cayó una tercera gota. La Golondrina miró hacia arriba y vio… ¡Ah, lo que vio! Los ojos del Príncipe Feliz estaban arrasados de lágrimas, que corrían sobre sus mejillas de oro. Su faz era tan bella a la luz de la luna, que la Golondrinita se sintió llena de piedad. -¿Quién sois? -dijo.-Soy el Príncipe Feliz.-Entonces, ¿por qué lloriqueáis de ese modo? -preguntó la Golondrina-. Me habéis empapado casi.-Cuando estaba yo vivo y tenía un corazón de hombre -repitió la estatua-, no sabía lo que eran las lágrimas porque vivía en el Palacio de la Despreocupación, en el que no se permite la entrada al dolor. Durante el día jugaba con mis compañeros en el jardín y por la noche bailaba en el gran salón. Alrededor del jardín se alzaba una muralla altísima, pero nunca me preocupó lo que había detrás de ella, pues todo cuanto me rodeaba era hermosísimo. Mis cortesanos me llamaban el Príncipe Feliz y, realmente, era yo feliz, si es que el placer es la felicidad. Así viví y así morí, y ahora que estoy muerto me han elevado tanto, que puedo ver todas las fealdades y todas las miserias de mi ciudad, y aunque mi corazón sea de plomo, no me queda más recurso que llorar.',
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
}
