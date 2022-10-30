import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fondo_foto/pages/poi_page.dart';
import 'package:fondo_foto/pages/registro_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

import '../models/user.dart';

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

  @override
  void initState(){
    getUser();
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

  void _validUser() {
  if(_email.text == userLoad.email && _password.text==userLoad.password){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const PoiPage()));
  }
  else {
    _showMsg("Correo o contraseña invalidas");
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






