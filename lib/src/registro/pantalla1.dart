import 'package:flutter/material.dart';
import 'pantalla2.dart';
import 'accesobd.dart';
import 'usuarios.dart';

class Pantalla1 extends StatefulWidget {
  @override
  Statepantalla1 createState() => Statepantalla1();
}

class Statepantalla1 extends State<Pantalla1> {
  AccesoBD objbd = AccesoBD();
  List<Usuario> objListadoUsers = List();
  @override
  void initState() {
    super.initState();
    objbd.listadoUsuarios().then((lista) {
      setState(() {
        lista.forEach((element) {
          print('obj user:${element.user}');
          objListadoUsers.add(element);
        });
      });
    });
  }

  @override
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
          child: ListView.builder(
            itemCount: objListadoUsers.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('${objListadoUsers[index].user}'),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute<Null>(builder: (BuildContext context) {
                    return new Pantalla2(objListadoUsers[index]);
                  }));
                },
              );
            },
          ),
        ));
  }
}
