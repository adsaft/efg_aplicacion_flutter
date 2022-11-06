import 'package:flutter/material.dart';

class CopyrightPage extends StatefulWidget {
  CopyrightPage({Key key}) : super(key: key);

  @override
  _CopyrightPageState createState() => _CopyrightPageState();
}

class _CopyrightPageState extends State<CopyrightPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Bienvenido a Aplicacion EFG!'),
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
          ],
        ),
      ),
    );
  }

  Widget _cardPresentacion1() {
    return Card(
      child: Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Copyright © Todos los derechos reservados Derechos de autor Todos los contenidos de este Sitio (Incluyendo, pero no limitado a, texto, logotipos, contenido, fotografías, audio, botones, nombres comerciales y vídeo) están sujetos a derechos de propiedad por las leyes de Derechos de Autor y demás Leyes relativas Internacionales a Androidphoria y de terceros titulares de los mismos que han autorizado debidamente su inclusión En ningún caso se entenderá que se concede licencia alguna o se efectúa renuncia, transmisión, cesión total o parcial de dichos derechos ni se confiere ningún derecho, y en especial, de alteración, explotación, reproducción, distribución o comunicación publica sobre dichos contenido sin la previa autorización expresa de Androidphoria o de los titulares correspondientes.El uso de imágenes, fragmentos de videos y demás material que sea objeto de protección de los derechos de autor, será exclusivamente para fines educativos e informativos, y cualquier uso distinto como el lucro, reproducción, edición o modificación, será perseguido y sancionado por el respectivo titular de los Derechos de Autor. Derechos de uso Queda prohibido copiar, reproducir, distribuir, publicar, transmitir, difundir, o en cualquier modo explotar cualquier parte de este servicio sin la autorización previa por escrito de Androidphoria o de los titulares correspondientes. Sin embargo, usted podrá bajar material a su computadora personal para uso exclusivamente personal o educacional y no comercial limitado a una copia por página. Usted no podrá remover o alterar de la copia ninguna leyenda de Derechos de Autor o la que manifieste la autoría del material',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.justify,
              ))
        ],
      ),
    );
  }
}
