import 'package:flutter/material.dart';

class PoiPageNevados extends StatefulWidget {
  const PoiPageNevados({Key? key}) : super(key: key);

  @override
  State<PoiPageNevados> createState() => _PoiPageStateNevados();
}

class _PoiPageStateNevados extends State<PoiPageNevados> {
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
              children:const [


                Text(
                    "Parque Los Nevados", style: TextStyle(
                    fontSize: 30, color: Colors.white, fontStyle: FontStyle.italic
                )
                ),
                SizedBox(
                    height: 40
                ),
                Image(image: AssetImage('assets/images/los-nevados.png')),
                SizedBox(
                    height: 30
                ),
                Text(
                    "Ciudad: MANIZALES", style: TextStyle(
                  fontSize: 21, color: Colors.white,
                )
                ),
                Text(
                    "Temp: 3°C", style: TextStyle(
                  fontSize: 21, color: Colors.white,
                )
                ),

                SizedBox(
                    height: 20
                ),
                Card(

                  child:
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                    child: DefaultTextStyle(style: TextStyle(fontSize: 21, color: Colors.purple,), child: Text("Por su naturaleza geologica, el parque es uno de los complejos volcanicos del pais, con 6 estrato volcanes de mas de 4.600 mts de altura. Dada la presencia de los diferentes pisos terminos es posible apreciar la transformacion del paisaje a medida que se asciende."),textAlign:  TextAlign.justify,),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),



    );
  }
}