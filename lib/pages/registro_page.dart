import 'package:flutter/material.dart';
import '../models/user.dart';
import 'login_page.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class RegistroPage extends StatefulWidget {
  const RegistroPage({Key? key}) : super(key: key);

  @override
  State<RegistroPage> createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
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
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("user", jsonEncode(user));
  }

  void _onGuardarRegistrar() {
    setState(() {
     if (_password.text == _repassword.text){
     var user =  User(_nombre.text, _telefono.text, _email.text, _password.text);
     _saveUser(user);
     Navigator.push(
         context,
         MaterialPageRoute(builder: (context) => const LoginPage()));
     }
     else {
       _showMsg("Las contraseñas deben ser iguales");
     }
    });

  }
}
