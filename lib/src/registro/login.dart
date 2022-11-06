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
        title: Text(
          'Registro de Aplicacion EFG',
          textAlign: TextAlign.right,
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 0.19),
          image: DecorationImage(
            image: AssetImage("lib/src/imagenes/Fondo.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(children: [
          new Image.asset('lib/src/imagenes/EFG.png'),
          Padding(
              padding: const EdgeInsets.only(top: 50),
              child: TextFormField(
                controller: vUser,
                decoration: InputDecoration(
                  hintText: 'Usuario:',
                  prefix: Text('     '),
                  suffix: Text('          '),
                  //errorText: 'Usuario no registrado',
                  border: OutlineInputBorder(),
                ),
              )),
          TextFormField(
            controller: vPwd,
            decoration: InputDecoration(
              hintText: 'Contraseña:',
              prefix: Text('      '),
              suffix: Text('          '),
              //errorText: 'Contraseña incorrecta',
              border: OutlineInputBorder(),
            ),
            obscureText: true,
          ),
          login(),
          registrar()
        ]),
      ),
    );
  }

  Widget login() {
    return Container(
        padding: const EdgeInsets.only(top: 45),
        child: ElevatedButton(
          child: Text('Entrar'),
          onPressed: validarusuario,
        ));
  }

  Widget registrar() {
    return Container(
        padding: const EdgeInsets.only(top: 45),
        child: ElevatedButton(
          child: Text('Registrate'),
          onPressed: registrarUsuario,
        ));
  }

  validarusuario() async {
    AccesoBD objBD = AccesoBD();
    objBD.validarUsuario(vUser.text, vPwd.text).then((List<Usuario> users) {
      if (users.length > 0 && users != null) {
        print('validado');
        Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (BuildContext context) {
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
                child: Text(
                  "Cerrar",
                  style: TextStyle(color: Colors.blue),
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
