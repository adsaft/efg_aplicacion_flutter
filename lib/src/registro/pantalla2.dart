import 'package:flutter/material.dart';
import 'accesobd.dart';
import 'pantalla1.dart';
import 'usuarios.dart';

class Pantalla2 extends StatefulWidget {
  final Usuario objUser;
  Pantalla2(this.objUser);

  @override
  StatePantalla2 createState() => StatePantalla2();
}

class StatePantalla2 extends State<Pantalla2> {
  TextEditingController vUser, vPass;

  @override
  void initState() {
    super.initState();
    vUser = TextEditingController(text: widget.objUser.user);
    vPass = TextEditingController(text: widget.objUser.pwd);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(children: [
          Text('ID:' + widget.objUser.id.toString()),
          Padding(
              padding: const EdgeInsets.only(top: 50),
              child: TextFormField(
                controller: vUser,
                //initialValue: " ESCRIBA SU CORREO",
                decoration: InputDecoration(hintText: 'Usuario:'),
              )),
          TextFormField(
            //initialValue: widget.objUser.pwd,
            controller: vPass,
            decoration: InputDecoration(hintText: 'Contraseña:'),
          ),
          btnActualizar(),
          btnEliminar()
        ]),
      ),
    );
  }

  Widget btnActualizar() {
    return Container(
        padding: const EdgeInsets.only(top: 45),
        child: RaisedButton(
          child: Text('Actualizar'),
          onPressed: actualizar,
        ));
  }

  Widget btnEliminar() {
    return Container(
        padding: const EdgeInsets.only(top: 45),
        child: RaisedButton(
          child: Text('Eliminar'),
          onPressed: eliminar,
        ));
  }

  void actualizar() {
    AccesoBD objBD = AccesoBD();
    Usuario objuser = Usuario(widget.objUser.id, vUser.text, vPass.text);
    objBD.actualizarUsuario(objuser);
    Navigator.of(context)
        .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
      return new Pantalla1();
    }));
  }

  void eliminar() {
    AccesoBD objBD = AccesoBD();
    objBD.eliminarUsuario(widget.objUser.id);
    Navigator.of(context)
        .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
      return new Pantalla1();
    }));
  }
}
