class User{
  var _nombre;
  var _telefono;
  var _email;
  var _password;


  User(this._nombre, this._telefono, this._email, this._password);


  User.Empty();

  User.fromJson(Map<String, dynamic> json)
  : _nombre = json['nombre'],
    _telefono = json['telefono'],
    _email= json['email'],
    _password = json['password'];



  Map<String, dynamic> toJson()=>{
    'nombre': _nombre,
    'telefono': _telefono,
    'email': _email,
    'password': _password
  };

  get password => _password;

  set password(value) {
    _password = value;
  }

  get email => _email;

  set email(value) {
    _email = value;
  }

  get telefono => _telefono;

  set telefono(value) {
    _telefono = value;
  }

  get nombre => _nombre;

  set nombre(value) {
    _nombre = value;
  }
}