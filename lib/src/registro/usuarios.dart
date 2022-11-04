class Usuario {
  int _id;
  String _user;
  String _pwd;

  Usuario(this._id, this._user, this._pwd);
  int get id => this._id;
  String get user => this._user;
  String get pwd => this._pwd;
}
