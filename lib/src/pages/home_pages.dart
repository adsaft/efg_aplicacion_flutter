//import 'package:efg_aplicacion/src/registro/login.dart';
//import 'package:efg_aplicacion/src/registro/pantalla2.dart';
//import 'package:efg_aplicacion/src/registro/usuarios.dart';
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
        title: Text('Bienvenido a la Aplicacion EFG!'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 0.19),
          image: DecorationImage(
            image: AssetImage("lib/src/imagenes/Fondo.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: <Widget>[
            Center(
              child: Image.asset(
                'lib/src/imagenes/EFG.png',
                width: 200.0,
                height: 150.0,
              ),
            ),
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
                  child: Text(
                    'Empezar',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.green[100],
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'niveles');
                  },
                ),
              ),
            ),
            Divider(),
            ButtonTheme(
              minWidth: 300.0,
              height: 150.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Center(
                child: ElevatedButton(
                  child: Text('Iniciar sesion', style: TextStyle(fontSize: 30,color: Colors.blue[100],)),
                  
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                ),
              ),
            ),
            Divider(),
            ButtonTheme(
              minWidth: 300.0,
              height: 150.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Center(
                child: ElevatedButton(
                  child: Text('Ayuda', style: TextStyle(fontSize: 30,color: Colors.orange[100],)),
                  
                  onPressed: () {
                    Navigator.pushNamed(context, 'ayuda');
                  },
                ),
              ),
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
                  style: TextStyle(fontSize: 40.0, color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              title: Text('Perfil',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  )),
              onTap: () {
                Navigator.pushNamed(context, 'perfil');
              },
            ),
            ListTile(
              title: Text('Libros',
                  style: TextStyle(fontSize: 20.0, color: Colors.black)),
              onTap: () {
                Navigator.pushNamed(context, 'libros');
              },
            ),
            ListTile(
              title: Text('Copyright',
                  style: TextStyle(fontSize: 20.0, color: Colors.black)),
              onTap: () {
                Navigator.pushNamed(context, 'copyright');
              },
            ),
            ListTile(
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
            ),
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
                'Hola, con esta pantalla puedes checar tus datos con la barra de ayuda lateral a la izquierda ',
                style: TextStyle(fontSize: 20)),
            color: Colors.yellow[100],
          )
        ],
      ),
    );
  }
}
