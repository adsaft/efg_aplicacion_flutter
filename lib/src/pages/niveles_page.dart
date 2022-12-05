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
        automaticallyImplyLeading: true,
        backgroundColor: Colors.green,
        centerTitle: true,
        title: 
          Text('Niveles'),
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
                        backgroundColor: Colors.blue[100],
                        minimumSize: Size(300, 100)),
                    child: Text(
                      'Nivel 1',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'nivel1');
                    },
                  ),
                ),
              ),
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
                        backgroundColor: Colors.green[100],
                        minimumSize: Size(300, 100)),
                    child: Text(
                      'Nivel 2',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'nivel2');
                    },
                  ),
                ),
              ),
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
                    child: Text(
                      'Nivel 3',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'nivel3');
                    },
                  ),
                ),
              ),
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
                        backgroundColor: Colors.orange[100],
                        minimumSize: Size(300, 100)),
                    child: Text(
                      'Nivel 4',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'nivel4');
                    },
                  ),
                ),
              ),
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
                        backgroundColor: Colors.purple[100],
                        minimumSize: Size(300, 100)),
                    child: Text(
                      'Nivel 5',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'nivel5');
                    },
                  ),
                ),
              ),
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
                        backgroundColor: Colors.teal[100],
                        minimumSize: Size(300, 100)),
                    child: Text(
                      'Nivel 6',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'nivel6');
                    },
                  ),
                ),
              ),
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
                        backgroundColor: Colors.red[100],
                        minimumSize: Size(300, 100)),
                    child: Text(
                      'Nivel 7',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'nivel7');
                    },
                  ),
                ),
              ),
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
                        backgroundColor: Colors.yellowAccent[100],
                        minimumSize: Size(300, 100)),
                    child: Text(
                      'Nivel 8',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'nivel8');
                    },
                  ),
                ),
              ),
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
                        backgroundColor: Colors.brown[100],
                        minimumSize: Size(300, 100)),
                    child: Text(
                      'Nivel 9',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'nivel9');
                    },
                  ),
                ),
              ),
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
                        backgroundColor: Colors.blue[100],
                        minimumSize: Size(300, 100)),
                    child: Text(
                      'Nivel 10',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'nivel10');
                    },
                  ),
                ),
              ),
              SizedBox(height: 30),
            ]),
      ),
    );
  }
}
