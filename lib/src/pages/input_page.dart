import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(child: Text('Inicio de Sesion')),
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
            Center(
              child: Image.asset(
                'lib/src/imagenes/EFG.png',
                width: 200.0,
                height: 150.0,
              ),
            ),
            SizedBox(height: 30),
            _crearInput(),
            SizedBox(height: 30),
            _edadPersona(),
            SizedBox(height: 30),
            _crearEmail(),
            SizedBox(height: 30),
            _crearPasword(),
            SizedBox(height: 30),
            _crearPersona(),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                child: Text('Iniciar sesion'),
                onPressed: () {
                  showAlertDialog(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pushNamed(context, 'home');
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Inicio de Sesion"),
      content: Text("La cuenta a inicado correctamente."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  Widget _crearInput() {
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Nombre de la persona',
          labelText: 'Nombre',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)),
      onChanged: (valor) {
        print(_nombre);
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _crearPersona() {
    return ListTile(
        title: Text('Nombre es: $_nombre'),
        subtitle: Text('Email: $_email'),
        trailing: Text('Password: $_password'));
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Email',
          labelText: 'Email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)),
      onChanged: (valor) {
        print(_nombre);
        setState(() {
          _email = valor;
        });
      },
    );
  }

  Widget _crearPasword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Password',
          labelText: 'Password',
          suffixIcon: Icon(Icons.lock_open),
          icon: Icon(Icons.lock)),
      onChanged: (valor) {
        print(_nombre);
        setState(() {
          _password = valor;
        });
      },
    );
  }

  Widget _edadPersona() {
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Edad de la persona',
          labelText: 'Edad',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)),
      onChanged: (valor) {
        print(_nombre);
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  /*_crearboton() {
    return ButtonInputElement();
  }*/
}
