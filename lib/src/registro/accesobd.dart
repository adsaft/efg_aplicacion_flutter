import 'usuarios.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io' as io;

class AccesoBD {
  static final AccesoBD _instancia = AccesoBD.internal();
  AccesoBD.internal();
  factory AccesoBD() => _instancia;
  static Database _db;

  Future<Database> get db async {
    if (_db != null) return _db;
    _db = await iniciaBD();
    return _db;
  }

  Future<Database> iniciaBD() async {
    io.Directory carpetadoc = await getApplicationDocumentsDirectory();
    String ruta = join(carpetadoc.path, 'demo278.db');
    Database db = await openDatabase(
      ruta,
      version: 1,
      onCreate: creartablas,
    );
    return db;
  }

  void creartablas(Database db, int version) async {
    await db.execute(
        'create table usuario(id integer primary key autoincrement,usuario text, clave text)');
    print('tabla creada');
  }

  void registrarUsuario(String user, String pwd) async {
    var clientedb = await db;
    await clientedb.transaction((tran) async {
      return tran.rawInsert(
        'insert into usuario (usuario, clave) values (\'$user\',\'$pwd\')',
      );
    });
    print('registro insertado');
  }

  Future<List<Usuario>> validarUsuario(String user, String pwd) async {
    var clientedb = await db;
    List<Usuario> listaUsuarios = List();
    List<Map> resultadoQuery = await clientedb.rawQuery(
      'select * from usuario where usuario = \'$user\' and clave = \'$pwd\'',
    );
    if (resultadoQuery != null && resultadoQuery.length > 0)
      for (int i = 0; i < resultadoQuery.length; i++) {
        listaUsuarios.add(Usuario(resultadoQuery[i]['id'],
            resultadoQuery[i]['user'], resultadoQuery[i]['pwd']));
      }
    return listaUsuarios;
  }

  void registrar(String user, String password) async {
    var dbClient = await db;
    await dbClient.transaction((trans) async {
      return await trans.rawInsert(
        'INSERT INTO usuario(usuario, clave) VALUES(\'$user\', \'$password\')',
      );
    });
    print('registrar: Dato guardado | $user');
  }

  Future<List<Usuario>> listadoUsuarios() async {
    var clientedb = await db;
    List<Usuario> listaUsuarios = List();
    List<Map> resultadoQuery = await clientedb.rawQuery(
      'select id, usuario, clave from usuario',
    );
    print('cont : ' + resultadoQuery.length.toString());
    if (resultadoQuery != null && resultadoQuery.length > 0)
      for (int i = 0; i < resultadoQuery.length; i++) {
        listaUsuarios.add(Usuario(resultadoQuery[i]['id'],
            resultadoQuery[i]['usuario'], resultadoQuery[i]['clave']));
        print(resultadoQuery[i]['usuario']);
      }
    return listaUsuarios;
  }

  Future<int> actualizarUsuario(Usuario user) async {
    var clientedb = await db;
    int res = 0;
    res = await clientedb.rawUpdate(
        "UPDATE usuario SET usuario = '${user.user}', clave='${user.pwd}' WHERE id = ${user.id}");
    print('$res');
    return res;
  }

  Future<int> eliminarUsuario(int id) async {
    var clientedb = await db;
    int res = 0;
    res = await clientedb.rawDelete('delete from usuario WHERE id = $id');
    print('$res');
    return res;
  }
}
