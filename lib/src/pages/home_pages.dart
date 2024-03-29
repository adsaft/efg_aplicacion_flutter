
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Bienvenido a la Aplicacion EFG!', 
        style: TextStyle(
           fontSize: 17,        
          ),
          ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(232, 69, 255, 255),
          image: DecorationImage(
            image: AssetImage("lib/src/imagenes/Fondo.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          children: <Widget>[
            Center(
              child: Image.asset(
                'lib/src/imagenes/EFG.png',
                width: 300.0,
                height: 250.0,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: 30),
                _cardPresentacion2(),
                 SizedBox(height: 30),
                _cardPresentacion1(),
                SizedBox(height: 30),
                  ButtonTheme(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green[100],
                          minimumSize: Size(300, 100)
                        ), 
                        child: Text(
                          'Juego',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'niveles');
                        },
                      ),
                    ),
                  ),
                /*ButtonTheme(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[100],
                        minimumSize: Size(300, 100)
                      ),
                      child: Text('Iniciar sesion',
                          style: TextStyle(
                            fontSize: 30,
                          )),
                      onPressed: () {
                        Navigator.pushNamed(context, 'login');
                      },
                    ),
                  ),
                ),*/
                SizedBox(height: 30),
                ButtonTheme(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange[100],
                        minimumSize: Size(300, 100)
                      ),
                      child: Text('Ayuda',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                          )),
                      onPressed: () {
                        Navigator.pushNamed(context, 'ayuda');
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Text(
                  'Menu',
                  style: TextStyle(fontSize: 40.0, color: Colors.white),textAlign: TextAlign.center,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            /*ListTile(
              title: Text('Perfil',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  )),
              onTap: () {
                Navigator.pushNamed(context, 'perfil');
              },
            ),*/
            SizedBox(height: 50),
            ListTile(
              title: Text('Libros',
                  style: TextStyle(fontSize: 30.0, color: Colors.black),textAlign: TextAlign.center,),
              onTap: () {
                Navigator.pushNamed(context, 'libros');
              },
            ),
            SizedBox(height: 50),
            ListTile(
              title: Text('Copyright',
                  style: TextStyle(fontSize: 30.0, color: Colors.black),textAlign: TextAlign.center,),
              onTap: () {
                Navigator.pushNamed(context, 'copyright');
              },
            ),
            /*ListTile(
              title: Text('Usuarios',
                  style: TextStyle(fontSize: 20.0, color: Colors.black)),
              onTap: () {
                Navigator.pushNamed(context, 'pantalla1');
              },
            ),
            ListTile(
              title: Text('Base de Datos',
                  style: TextStyle(fontSize: 20.0, color: Colors.black)),
              onTap: () {
                Navigator.pushNamed(context, 'basedatos');
              },
            ),*/
          ],
        ),
      ),
      drawerEnableOpenDragGesture: true,
    );
  }

  Widget _cardPresentacion1() {
    return Card(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
                'Hola, con esta pantalla puedes iniciar a jugar los cuento presionando en juego',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                )),
            color: Colors.yellow[100],
          )
        ],
      ),
    );
  }
}
Widget _cardPresentacion2() {
  return Card(
    child: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text(
              'Un mundo más allá de la lectura',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30)),
          color: Colors.pink[100],
        )
      ],
    ),
  );
}
