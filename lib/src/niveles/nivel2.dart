import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Nivel2Page extends StatefulWidget {
  Nivel2Page({Key key}) : super(key: key);

  @override
  _Nivel2PageState createState() => _Nivel2PageState();
}

class _Nivel2PageState extends State<Nivel2Page> {
  YoutubePlayerController controller;

  @override
  void initState(){
    super.initState();

    const url ='https://www.youtube.com/watch?v=UiaKfwqx_Ak';

    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url),
    );
  }


  @override
  void deactivate(){
    controller.pause();
    super.deactivate();
  }
  @override
  void dispose(){
    controller.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) => YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: controller,
      ),
      builder: (context,player) =>
      Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('El Sol y la Luna'),
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
            _cardPresentacion1(),
            SizedBox(height: 30),
            player,
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
                    Navigator.pushReplacementNamed(context, 'pregunta5');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    )
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
            /*'Un niño y una niña vivían con su madre en una casita en un valle. Un día la madre fue a trabajar a un banquete que se daba en otra ciudad. Antes de irse, la madre les dijo sus hijos: “Hoy tengo que ir a trabajar a una casa a veinte cuestas de aquí. Cuando oscurezca cerrad bien la puerta y no abráis a nadie hasta que vuelva yo”. Los niños obedecieron y se despidieron de ella. Cuando su madre terminó de trabajar ya era de noche. Colocó sobre su cabeza el paquete de pasteles de arroz que le habían regalado para sus hijos y partió. La madre caminaba por las calles con mucho miedo porque se oían aullidos y ruidos de animales salvajes, aunque andaba con ganas por llegar a casa y darles los pasteles a sus hijos. Al cruzar la primera cuesta se topó con un tigre que, olfateándola, le preguntó qué llevaba sobre su cabeza. La madre le dijo que eran pasteles para sus hijos, a lo que el tigre contestó “Si me das un pastel no te comeré”. La madre se lo dio enseguida y se fue corriendo con temor. Al cruzar la segunda cuesta volvió a encontrarse con el tigre, que le amenazó de la misma manera. La escena se repitió hasta la cuesta duodécima y los niños ya podían ver a su madre desde la casa. La madre entregó el último pastel al tigre y salió corriendo a refugiarse en su casa, pero cuando llegó se dio cuenta de que los niños habían salido por la puerta de atrás y, asustados, se habían subido a un árbol. El tigre les había visto esconderse entre las ramas, se dirigió hacia allí y trató de trepar hasta ellos para atraparlos. El niño, muy asustado, empezó a rezar a los dioses: “¡Dios del cielo, si quieres salvarnos la vida, envíanos una soga!”. Al momento cayó una cuerda, los niños se agarraron a ella y poco a poco subieron hasta desaparecer entre las nubes. El tigre, enfadado, no se rindió y también rezó a los dioses: ¡Dios del cielo, apiádate de este tigre hambriento, envíame soga!”. Enseguida bajó otra cuerda, el tigre se agarró a ella y empezó a subir. Cuando estaba a punto de desaparecer entre las nubes la cuerda se rompió y el tigre cayó. Los Dioses le habían enviado una cuerda podrida por sus maldades. El tigre se hizo tanto daño que huyó y no volvió allí nunca más. Los niños, que habían subido más allá de las nubes, se convirtieron en el Sol y la Luna.'*/
            'Mire el video completo y responda las preguntas.',
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
