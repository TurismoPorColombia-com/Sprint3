import 'package:flutter/material.dart';
import '../models/user.dart';
import 'login_page.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../repository/firebase_api.dart';


class RegistroPage extends StatefulWidget {
  const RegistroPage({Key? key}) : super(key: key);

  @override
  State<RegistroPage> createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {

  final FirebaseApi _firebaseApi = FirebaseApi();
  final _nombre = TextEditingController();
  final _telefono = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _repassword = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child:
        Center(
          child:
          SingleChildScrollView(
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children:
              <Widget>[
                const Image(image: AssetImage('assets/images/bogota_logo.png')),
                const SizedBox(
                    height: 10
                ),
                const Text("Complete la informacion", style: TextStyle(fontSize: 19,
                  fontStyle: FontStyle.italic,color: Colors.white,),
                ),
                const SizedBox(
                    height: 10
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(color: Colors.blue)
                    ),
                    child:
                    TextField(
                      controller: _nombre,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(fontSize:19.0,
                        fontFamily: "Roboto",
                        color: Colors.black,

                      ),
                      decoration: const InputDecoration(hintText: ' nombre completo',
                      ),
                    ),
                ),

                const SizedBox(
                    height: 10
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(color: Colors.blue)
                    ),
                    child:
                    TextField(
                      controller: _telefono,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(fontSize:19.0,
                        fontFamily: "Roboto",
                        color: Colors.black,
                      ),
                      decoration: const InputDecoration(hintText: ' telefono',
                      ),
                    ),
                ),

                const SizedBox(
                    height: 10
                ),

              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(color: Colors.blue)
                  ),
                  child:
                  TextField(
                    controller: _email,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(fontSize:19.0,
                      fontFamily: "Roboto",
                      color: Colors.black,
                    ),
                    decoration: const InputDecoration(hintText: ' correo electronico',
                    ),
                  ),
              ),

                const SizedBox(
                    height: 10
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(color: Colors.blue)
                    ),
                    child:
                    TextField(
                      controller: _password,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(fontSize:19.0,
                        fontFamily: "Roboto",
                        color: Colors.black,
                      ),
                      decoration: const InputDecoration(hintText: ' contraseña',
                      ),
                    ),
                ),

                const SizedBox(
                    height: 10
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(color: Colors.blue)
                    ),
                    child:
                    TextField(
                      controller: _repassword,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(fontSize:19.0,
                        fontFamily: "Roboto",
                        color: Colors.black,
                      ),
                      decoration: const InputDecoration(hintText: ' repetir  contraseña',
                      ),
                    ),
                ),
                const SizedBox(
                    height: 10
                ),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 19),
                  ),
                  onPressed: (){
                    _onGuardarRegistrar();
                  },
                  child: const Text("Guardar"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void _showMsg(String msg){
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
        SnackBar(content: Text(msg),
          action: SnackBarAction(
            label: "Aceptar", onPressed: scaffold.hideCurrentSnackBar),
          )
    );
  }
  void _saveUser(User user) async {
    var result = await _firebaseApi.createUser(user);
    Navigator.pushReplacement( context, MaterialPageRoute(builder: (context) => const LoginPage()));

  }
  void _registerUser(User user) async {
    //SharedPreferences prefs = await SharedPreferences.getInstance();
    //prefs.setString("user", jsonEncode(user));
    var result = await _firebaseApi.registerUser(user.email, user.password);
    String msg = "";
    if (result == "invalid-email") {
      msg = "correo electronico invalido";
      _volverRegistro();
    } else if (result == "weak-password") {
      msg = "contraseña debe ser min 6 digitos";
      _volverRegistro();
    } else if (result == "email-already-in-use") {
      msg = "correo ya en uso";
      _volverRegistro();
    } else if (result == "network-request-failed") {
      msg = "sin red de conexion";
      _volverRegistro();
    } else
      msg = "usuario registrado con exito";
    _showMsg(msg);
    user.uid = result;
    _saveUser(user);
  }

  void _onGuardarRegistrar() {
    setState(() {
     if (_password.text == _repassword.text){
     var user =  User("", _nombre.text, _telefono.text, _email.text, _password.text);
     _registerUser(user);

     }
     else {
       _showMsg("Las contraseñas deben ser iguales");
     }
    });

  }
  void _volverRegistro(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const RegistroPage()));
  }
}
