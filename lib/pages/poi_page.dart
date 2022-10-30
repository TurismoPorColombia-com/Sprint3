import 'package:flutter/material.dart';

class PoiPage extends StatefulWidget {
  const PoiPage({Key? key}) : super(key: key);

  @override
  State<PoiPage> createState() => _PoiPageState();
}

class _PoiPageState extends State<PoiPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
        body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child:
            Center(
              child: SingleChildScrollView(
              child:
                 Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: const [
                     Text(
                      "Iglesia de Monserrate", style: TextStyle(
                      fontSize: 30, color: Colors.white, fontStyle: FontStyle.italic
                      )
                      ),
                      SizedBox(
                        height: 40
                      ),
                      Image(image: AssetImage('assets/images/Monserrate.png')),
                      SizedBox(
                        height: 30
                      ),
                      Text(
                        "Ciudad: BOGOTA", style: TextStyle(
                      fontSize: 21, color: Colors.white,
                      )
                      ),
                      Text(
                        "Temp: 20°C", style: TextStyle(
                      fontSize: 21, color: Colors.white,
                     )
                     ),
                       SizedBox(
                        height: 20
                    ),
                    DefaultTextStyle(style: TextStyle(fontSize: 21, color: Colors.white,), child: Text("El cerro de Monserrate, ubicado al oriente del Distrito Capital Colombiano el cual es una de las formaciones más reconocibles de la sabana de Bogotá, así como uno de los símbolos de la ciudad.Esta ubicado a una altura de 3500m s.n.m."),textAlign:  TextAlign.justify,),
                  ],
                ),
            ),
        ),
        ),
    );
  }
}

