import 'package:flutter/material.dart';

class LibrosPage extends StatefulWidget {
  LibrosPage({Key key}) : super(key: key);

  @override
  _LibrosPageState createState() => _LibrosPageState();
}

class _LibrosPageState extends State<LibrosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Libros'),
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
              _cardPresentacion2(),
              Divider(),
              _cardPresentacion3(),
              Divider(),
              _cardPresentacion4(),
              Divider(),
              _cardPresentacion5(),
              Divider(),
              _cardPresentacion6(),
              Divider(),
              _cardPresentacion7(),
              Divider(),
              _cardPresentacion8(),
              Divider(),
              _cardPresentacion9(),
              Divider(),
              _cardPresentacion10(),
              Divider(),
            ]),
      ),
    );
  }

  _cardPresentacion1() {
    return InkWell(
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Image.asset(
                  'lib/src/imagenes/libro1.jpg',
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, 'libro1');
      },
    );
  }

  _cardPresentacion2() {
    return InkWell(
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Image.asset(
                  'lib/src/imagenes/libro2.jpg',
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, 'libro2');
      },
    );
  }

  _cardPresentacion3() {
    return InkWell(
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Image.asset(
                  'lib/src/imagenes/libro3.jpg',
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, 'libro3');
      },
    );
  }

  _cardPresentacion4() {
    return InkWell(
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Image.asset(
                  'lib/src/imagenes/libro4.jpg',
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, 'libro4');
      },
    );
  }

  _cardPresentacion5() {
    return InkWell(
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Image.asset(
                  'lib/src/imagenes/libro5.jpg',
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, 'libro5');
      },
    );
  }

  _cardPresentacion6() {
    return InkWell(
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Image.asset(
                  'lib/src/imagenes/libro6.jpg',
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, 'libro6');
      },
    );
  }

  _cardPresentacion7() {
    return InkWell(
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Image.asset(
                  'lib/src/imagenes/libro7.jpg',
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, 'libro7');
      },
    );
  }

  _cardPresentacion8() {
    return InkWell(
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Image.asset(
                  'lib/src/imagenes/libro8.jpg',
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, 'libro8');
      },
    );
  }

  _cardPresentacion9() {
    return InkWell(
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Image.asset(
                  'lib/src/imagenes/libro9.jpg',
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, 'libro9');
      },
    );
  }

  _cardPresentacion10() {
    return InkWell(
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Image.asset(
                  'lib/src/imagenes/libro10.jpg',
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, 'libro10');
      },
    );
  }
}
