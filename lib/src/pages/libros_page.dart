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
        centerTitle: true,
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
              SizedBox(height: 30),
              _cardPresentacion1(),
              SizedBox(height: 30),
              _cardPresentacion2(),
              SizedBox(height: 30),
              _cardPresentacion3(),
              SizedBox(height: 30),
              _cardPresentacion4(),
              SizedBox(height: 30),
              _cardPresentacion5(),
              SizedBox(height: 30),
              _cardPresentacion6(),
              SizedBox(height: 30),
              _cardPresentacion7(),
              SizedBox(height: 30),
              _cardPresentacion8(),
              SizedBox(height: 30),
              _cardPresentacion9(),
              SizedBox(height: 30),
              _cardPresentacion10(),
              SizedBox(height: 30),
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
        Navigator.pushReplacementNamed(context, 'libro1');
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
        Navigator.pushReplacementNamed(context, 'libro2');
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
        Navigator.pushReplacementNamed(context, 'libro3');
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
        Navigator.pushReplacementNamed(context, 'libro4');
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
        Navigator.pushReplacementNamed(context, 'libro5');
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
        Navigator.pushReplacementNamed(context, 'libro6');
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
        Navigator.pushReplacementNamed(context, 'libro7');
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
        Navigator.pushReplacementNamed(context, 'libro8');
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
        Navigator.pushReplacementNamed(context, 'libro9');
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
        Navigator.pushReplacementNamed(context, 'libro10');
      },
    );
  }
}
