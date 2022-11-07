import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fondo_foto/sitios/poi_monserrate.dart';
import 'package:fondo_foto/pages/registro_page.dart';
import 'package:fondo_foto/repository/firebase_api.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

import '../models/user.dart';
import '../sitios/sitios_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  final _email = TextEditingController();
  final _password = TextEditingController();
  var mostrar ="";

  User userLoad = User.Empty();
  final FirebaseApi _firebaseApi = FirebaseApi();

  @override
  void initState(){
   // getUser();
    super.initState();
  }

  getUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map<String, dynamic> userMap = jsonDecode(prefs.getString("user")!);
    userLoad = User.fromJson(userMap);

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

  void _validUser() async {
  if(_email.text.isEmpty || _password.text.isEmpty){
    _showMsg("Debe digitar correo y contraseña");

  }
  else {
    var result = await _firebaseApi.logInUser(_email.text, _password.text);
    String msg = "";
    if (result == "invalid-email"){ msg = "correo electronico invalido"; } else
    if (result == "wrong-password"){ msg = "correo o contraseña invalida"; } else
    if (result == "network-request-failed"){ msg = "sin red de conexion"; } else
      msg = "Bienvenido";
    _showMsg(msg);
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SitiosPage()));
  }
}



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                                     height: 15
                                 ),
                                 Container(
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(10),
                                         color: Colors.white,
                                     ),
                                      child:
                                      TextField(
                                        controller: _password,
                                         keyboardType: TextInputType.text,
                                          style: const TextStyle(fontSize:19.0,
                                          fontFamily: "Roboto", color: Colors.black,
                                          ),

                                               decoration: const InputDecoration(hintText: 'contraseña',prefixIcon: Icon(Icons.lock),),
                                                 ),
                                   ),
                                  const SizedBox(
                                      height: 15
                                  ),

                                   Container(
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(10),
                                         color: Colors.white,
                                     ),
                                     child:
                                      TextField(
                                                 decoration: const InputDecoration(hintText: 'correo electronico',
                                                 prefixIcon: Icon(Icons.person),),
                                                  controller: _email,
                                                   keyboardType: TextInputType.text,
                                                  style: const TextStyle(fontSize:19.0,
                                                   fontFamily: "Roboto",
                                                  color: Colors.black,
                                          ),
                                    ),
                                   ),
                                  const SizedBox(
                                      height: 15
                                  ),

                                  ElevatedButton(
                                    style: TextButton.styleFrom(
                                      textStyle: const TextStyle(fontSize: 19),
                                    ),
                                    onPressed: (){
                                      _validUser();
                                    },
                                    child: const Text("Iniciar Sesion"),
                                  ),
                                  const SizedBox(
                                      height: 5
                                  ),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      textStyle: const TextStyle(fontSize: 19, fontStyle: FontStyle.italic),
                                    ),
                                    onPressed: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => const RegistroPage()));
                                    },
                                    child: const Text("Registrarse"),
                                  ),





                            ],
                          ),


           ),
        ),
        ),
    );
  }




}






