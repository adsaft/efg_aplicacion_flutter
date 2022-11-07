import 'package:efg_aplicacion/src/pages/home_pages.dart';
import 'package:flutter/material.dart';
import 'pantalla1.dart';
import 'accesobd.dart';
import 'usuarios.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  final vUser = TextEditingController();
  final vPwd = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Registro de Aplicacion EFG',
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          color: Color.fromARGB(136, 255, 255, 255),
          image: DecorationImage(
            image: AssetImage("lib/src/imagenes/Fondo.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(children: [
          new Image.asset('lib/src/imagenes/EFG.png'),
          Padding(
              padding: const EdgeInsets.only(top: 5),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                controller: vUser,
                decoration: InputDecoration(
                  hintText: 'Usuario',
                  hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                  prefix: Text('     '),
                  suffix: Text('          '),
                  filled: true,
                  fillColor: Colors.deepPurpleAccent,
                  border: OutlineInputBorder(),
                ),
              )),
          TextFormField(
            style: TextStyle(color: Colors.white),
            controller: vPwd,
            decoration: InputDecoration(
              hintText: 'Contraseña',
              hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
              prefix: Text('      '),
              suffix: Text('          '),
              filled: true,
              fillColor: Colors.deepPurpleAccent,
              //errorText: 'Contraseña incorrecta',
              border: OutlineInputBorder(),
            ),
            obscureText: true,
          ),
          login(),
          registrar(),
          SizedBox(height: 30),
        ]),
      ),
    );
  }

  Widget login() {
    return Container(
        padding: const EdgeInsets.only(top: 45),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green[100], minimumSize: Size(300, 100)),
          child: Text(
            'Entrar',
            style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 0, 0, 0)),
          ),
          onPressed: validarusuario,
        ));
  }

  Widget registrar() {
    return Container(
        padding: const EdgeInsets.only(top: 45),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow[100], minimumSize: Size(300, 100)),
          child: Text(
            'Registrate',
            style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 0, 0, 0)),
          ),
          onPressed: registrarUsuario,
        ));
  }

  validarusuario() async {
    AccesoBD objBD = AccesoBD();
    objBD.validarUsuario(vUser.text, vPwd.text).then((List<Usuario> users) {
      if (users.length > 0 && users != null) {
        print('validado');
        Navigator.of(context).pushReplacement(
            new MaterialPageRoute(builder: (BuildContext context) {
          return new HomePage();
        }));
      } else
        print('no validado');
    });
  }

  registrarUsuario() async {
    AccesoBD objBD = AccesoBD();
    objBD.registrar(vUser.text, vPwd.text);
    mostrarAlerta();
  }

  void mostrarAlerta() {
    showDialog(
        context: context,
        builder: (buildcontext) {
          return AlertDialog(
            title: Text("Usuario Registrado"),
            actions: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[100],
                    minimumSize: Size(300, 100)),
                child: Text(
                  "Cerrar",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
}
