import 'package:flutter/material.dart';
import 'package:efg_aplicacion/src/pages/home_pages.dart';
import 'package:efg_aplicacion/src/routes/routes.dart';
/*import 'src/provider/libros_provider.dart';*/
import 'package:provider/provider.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyApp(
    //, MultiProvider(
      /*providers: [
        ChangeNotifierProvider(
          create: (_) => LibrosProvider(),
          lazy: false,
        )
      ],*/
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proyecto EFG',
      //home: InputPage(),
      initialRoute: 'login',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta llamada: ${settings.name}');

        return MaterialPageRoute(builder: (BuildContext context) => HomePage());
      },
    );
  }
}
