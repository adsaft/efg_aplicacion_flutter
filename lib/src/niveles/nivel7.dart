import 'package:flutter/material.dart';

class Nivel7Page extends StatefulWidget {
  Nivel7Page({Key key}) : super(key: key);

  @override
  _Nivel7PageState createState() => _Nivel7PageState();
}

class _Nivel7PageState extends State<Nivel7Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('El Caballito de Mar'),
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
                    Navigator.pushReplacementNamed(context, 'pregunta25');
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
            padding: EdgeInsets.all(15),
            width: double.infinity,
            child: Text(
              'El caballito de mar es uno de los animales más curiosos del planeta. Se llama así porque, como ya te habrás dado cuenta, su cabeza recuerda muchísimo a la de un caballo. Aunque no lo parezca, el caballito de mar es un pez. Sí, un pez un poco raro porque no tiene escamas y nada en posición vertical gracias a una aleta que tiene en la parte de atrás de su cuerpo. Para ser sinceros el caballito de mar no es un buen nadador, pero además tiene en su contra que, como es muy ligero, si no enrolla la cola en alguna planta acuática la corriente lo arrastra como si fuera una pluma ¡La naturaleza no se lo ha puesto fácil a este pobre animalillo! Su aspecto también es de lo más extraño. Si te fijas bien verás que su cuerpo está cubierto por un esqueleto de hueso que se aprecia bajo la piel; además, tiene unos ojitos saltones que, al igual que el camaleón, puede mover de forma independiente, cada uno en una dirección. Otra curiosidad es que posee un hocico muy práctico que le sirve para aspirar su comida favorita: las larvas, los camarones y el plancton. Por cierto ¿sabes cuál es el único animal macho del mundo que puede quedarse embarazado? ¡Has acertado!: el caballito de mar. Es la hembra  la que se encarga de poner los huevecillos en la bolsa que el macho tiene en el abdomen. Tras varios días, a veces semanas, este expulsa a las crías. Aunque existen cincuenta especies diferentes de caballitos de mar todos tienen en común que adoran vivir en aguas poco profundas y calentitas. No olvides que los caballitos de mar son animales muy delicados que no soportan la vida en cautividad. Por muy lindos y tiernos que nos parezcan, jamás debemos tenerlos como mascotas en un acuario.',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            color: Colors.purple[100],
          )
        ],
      ),
    );
  }
}
