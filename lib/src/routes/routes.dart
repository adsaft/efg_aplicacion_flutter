//import 'package:efg_aplicacion/src/pages/basededatos.dart';
import 'package:flutter/material.dart';
import 'package:efg_aplicacion/src/pages/ayuda_page.dart';
import 'package:efg_aplicacion/src/pages/copyright_page.dart';
import 'package:efg_aplicacion/src/pages/niveles_page.dart';
import 'package:efg_aplicacion/src/pages/home_pages.dart';
import 'package:efg_aplicacion/src/pages/input_page.dart';
import 'package:efg_aplicacion/src/pages/libros_page.dart';
import 'package:efg_aplicacion/src/pages/mal.dart';
import 'package:efg_aplicacion/src/pages/bien.dart';
import 'package:efg_aplicacion/src/pages/perfil_page.dart';
import 'package:efg_aplicacion/src/pages/json_page.dart';
import 'package:efg_aplicacion/src/registro/login.dart';
import 'package:efg_aplicacion/src/registro/pantalla1.dart';
import 'package:efg_aplicacion/src/niveles/nivel1.dart';
import 'package:efg_aplicacion/src/niveles/nivel2.dart';
import 'package:efg_aplicacion/src/niveles/nivel3.dart';
import 'package:efg_aplicacion/src/niveles/nivel4.dart';
import 'package:efg_aplicacion/src/niveles/nivel5.dart';
import 'package:efg_aplicacion/src/niveles/nivel6.dart';
import 'package:efg_aplicacion/src/niveles/nivel7.dart';
import 'package:efg_aplicacion/src/niveles/nivel8.dart';
import 'package:efg_aplicacion/src/niveles/nivel9.dart';
import 'package:efg_aplicacion/src/niveles/nivel10.dart';
import 'package:efg_aplicacion/src/preguntas/prueba.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta1.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta2.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta3.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta4.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta5.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta6.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta7.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta8.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta9.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta10.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta11.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta12.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta13.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta14.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta15.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta16.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta17.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta18.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta19.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta20.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta21.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta22.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta23.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta24.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta25.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta26.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta27.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta28.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta29.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta30.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta31.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta32.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta33.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta34.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta35.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta36.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta37.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta38.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta39.dart';
import 'package:efg_aplicacion/src/preguntas/pregunta40.dart';
import 'package:efg_aplicacion/src/libros/libro1.dart';
import 'package:efg_aplicacion/src/libros/libro2.dart';
import 'package:efg_aplicacion/src/libros/libro3.dart';
import 'package:efg_aplicacion/src/libros/libro4.dart';
import 'package:efg_aplicacion/src/libros/libro5.dart';
import 'package:efg_aplicacion/src/libros/libro6.dart';
import 'package:efg_aplicacion/src/libros/libro7.dart';
import 'package:efg_aplicacion/src/libros/libro8.dart';
import 'package:efg_aplicacion/src/libros/libro9.dart';
import 'package:efg_aplicacion/src/libros/libro10.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'home': (BuildContext context) => HomePage(),
    'inputs': (BuildContext context) => InputPage(),
    'perfil': (BuildContext context) => PerfilPage(),
    'niveles': (BuildContext context) => NivelesPage(),
    'ayuda': (BuildContext context) => AyudaPage(),
    'copyright': (BuildContext context) => CopyrightPage(),
    'mal': (BuildContext context) => MalPage(),
    'bien': (BuildContext context) => BienPage(),
    'libros': (BuildContext context) => LibrosPage(),
    'json': (BuildContext context) => JsonPage(),
    'login': (BuildContext context) => Login(),
    'pantalla1': (BuildContext context) => Pantalla1(),
    //'basedatos': (BuildContext context) => BaseDeDatosPage(),
    'nivel1': (BuildContext context) => Nivel1Page(),
    'nivel2': (BuildContext context) => Nivel2Page(),
    'nivel3': (BuildContext context) => Nivel3Page(),
    'nivel4': (BuildContext context) => Nivel4Page(),
    'nivel5': (BuildContext context) => Nivel5Page(),
    'nivel6': (BuildContext context) => Nivel6Page(),
    'nivel7': (BuildContext context) => Nivel7Page(),
    'nivel8': (BuildContext context) => Nivel8Page(),
    'nivel9': (BuildContext context) => Nivel9Page(),
    'nivel10': (BuildContext context) => Nivel10Page(),
    'prueba': (BuildContext context) => PruebaPage(),
    'pregunta1': (BuildContext context) => Pregunta1Page(),
    'pregunta2': (BuildContext context) => Pregunta2Page(),
    'pregunta3': (BuildContext context) => Pregunta3Page(),
    'pregunta4': (BuildContext context) => Pregunta4Page(),
    'pregunta5': (BuildContext context) => Pregunta5Page(),
    'pregunta6': (BuildContext context) => Pregunta6Page(),
    'pregunta7': (BuildContext context) => Pregunta7Page(),
    'pregunta8': (BuildContext context) => Pregunta8Page(),
    'pregunta9': (BuildContext context) => Pregunta9Page(),
    'pregunta10': (BuildContext context) => Pregunta10Page(),
    'pregunta11': (BuildContext context) => Pregunta11Page(),
    'pregunta12': (BuildContext context) => Pregunta12Page(),
    'pregunta13': (BuildContext context) => Pregunta13Page(),
    'pregunta14': (BuildContext context) => Pregunta14Page(),
    'pregunta15': (BuildContext context) => Pregunta15Page(),
    'pregunta16': (BuildContext context) => Pregunta16Page(),
    'pregunta17': (BuildContext context) => Pregunta17Page(),
    'pregunta18': (BuildContext context) => Pregunta18Page(),
    'pregunta19': (BuildContext context) => Pregunta19Page(),
    'pregunta20': (BuildContext context) => Pregunta20Page(),
    'pregunta21': (BuildContext context) => Pregunta21Page(),
    'pregunta22': (BuildContext context) => Pregunta22Page(),
    'pregunta23': (BuildContext context) => Pregunta23Page(),
    'pregunta24': (BuildContext context) => Pregunta24Page(),
    'pregunta25': (BuildContext context) => Pregunta25Page(),
    'pregunta26': (BuildContext context) => Pregunta26Page(),
    'pregunta27': (BuildContext context) => Pregunta27Page(),
    'pregunta28': (BuildContext context) => Pregunta28Page(),
    'pregunta29': (BuildContext context) => Pregunta29Page(),
    'pregunta30': (BuildContext context) => Pregunta30Page(),
    'pregunta31': (BuildContext context) => Pregunta31Page(),
    'pregunta32': (BuildContext context) => Pregunta32Page(),
    'pregunta33': (BuildContext context) => Pregunta33Page(),
    'pregunta34': (BuildContext context) => Pregunta34Page(),
    'pregunta35': (BuildContext context) => Pregunta35Page(),
    'pregunta36': (BuildContext context) => Pregunta36Page(),
    'pregunta37': (BuildContext context) => Pregunta37Page(),
    'pregunta38': (BuildContext context) => Pregunta38Page(),
    'pregunta39': (BuildContext context) => Pregunta39Page(),
    'pregunta40': (BuildContext context) => Pregunta40Page(),
    'libro1': (BuildContext context) => Libro1Page(),
    'libro2': (BuildContext context) => Libro2Page(),
    'libro3': (BuildContext context) => Libro3Page(),
    'libro4': (BuildContext context) => Libro4Page(),
    'libro5': (BuildContext context) => Libro5Page(),
    'libro6': (BuildContext context) => Libro6Page(),
    'libro7': (BuildContext context) => Libro7Page(),
    'libro8': (BuildContext context) => Libro8Page(),
    'libro9': (BuildContext context) => Libro9Page(),
    'libro10': (BuildContext context) => Libro10Page(),
  };
}
