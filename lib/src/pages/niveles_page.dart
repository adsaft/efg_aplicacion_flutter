import 'package:flutter/material.dart';

class NivelesPage extends StatefulWidget {
  NivelesPage({Key key}) : super(key: key);

  @override
  _NivelesPageState createState() => _NivelesPageState();
}

class _NivelesPageState extends State<NivelesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        title: Center(
          child: Text('Niveles'),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 0.5),
          image: DecorationImage(
            image: AssetImage("lib/src/imagenes/Fondo.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            children: <Widget>[
              ButtonTheme(
                minWidth: 300.0,
                height: 150.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: Center(
                  child: RaisedButton(
                    child: Text(
                      'Inicio',
                      style: TextStyle(fontSize: 30),
                    ),
                    color: Colors.blue[100],
                    onPressed: () {
                      Navigator.pushNamed(context, 'home');
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
                  child: RaisedButton(
                    child: Text(
                      'Nivel prueba',
                      style: TextStyle(fontSize: 30),
                    ),
                    color: Colors.blue[100],
                    onPressed: () {
                      Navigator.pushNamed(context, 'nivel0');
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
                  child: RaisedButton(
                    child: Text(
                      'Nivel 1',
                      style: TextStyle(fontSize: 30),
                    ),
                    color: Colors.blue[100],
                    onPressed: () {
                      Navigator.pushNamed(context, 'nivel1');
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
                  child: RaisedButton(
                    child: Text(
                      'Nivel 2',
                      style: TextStyle(fontSize: 30),
                    ),
                    color: Colors.green[100],
                    onPressed: () {
                      Navigator.pushNamed(context, 'nivel2');
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
                  child: RaisedButton(
                    child: Text(
                      'Nivel 3',
                      style: TextStyle(fontSize: 30),
                    ),
                    color: Colors.yellow[100],
                    onPressed: () {
                      Navigator.pushNamed(context, 'nivel3');
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
                  child: RaisedButton(
                    child: Text(
                      'Nivel 4',
                      style: TextStyle(fontSize: 30),
                    ),
                    color: Colors.orange[100],
                    onPressed: () {
                      Navigator.pushNamed(context, 'nivel4');
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
                  child: RaisedButton(
                    child: Text(
                      'Nivel 5',
                      style: TextStyle(fontSize: 30),
                    ),
                    color: Colors.purple[100],
                    onPressed: () {
                      Navigator.pushNamed(context, 'nivel5');
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
                  child: RaisedButton(
                    child: Text(
                      'Nivel 6',
                      style: TextStyle(fontSize: 30),
                    ),
                    color: Colors.teal[100],
                    onPressed: () {
                      Navigator.pushNamed(context, 'nivel6');
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
                  child: RaisedButton(
                    child: Text(
                      'Nivel 7',
                      style: TextStyle(fontSize: 30),
                    ),
                    color: Colors.red[100],
                    onPressed: () {
                      Navigator.pushNamed(context, 'nivel7');
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
                  child: RaisedButton(
                    child: Text(
                      'Nivel 8',
                      style: TextStyle(fontSize: 30),
                    ),
                    color: Colors.green[100],
                    onPressed: () {
                      Navigator.pushNamed(context, 'nivel8');
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
                  child: RaisedButton(
                    child: Text(
                      'Nivel 9',
                      style: TextStyle(fontSize: 30),
                    ),
                    color: Colors.brown[100],
                    onPressed: () {
                      Navigator.pushNamed(context, 'nivel9');
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
                  child: RaisedButton(
                    child: Text(
                      'Nivel 10',
                      style: TextStyle(fontSize: 30),
                    ),
                    color: Colors.blue[100],
                    onPressed: () {
                      Navigator.pushNamed(context, 'nivel10');
                    },
                  ),
                ),
              ),
              Divider(),
            ]),
      ),
    );
  }
}
