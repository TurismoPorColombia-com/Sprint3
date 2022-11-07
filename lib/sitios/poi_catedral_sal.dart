import 'package:flutter/material.dart';

class PoiPageSal extends StatefulWidget {
  const PoiPageSal({Key? key}) : super(key: key);

  @override
  State<PoiPageSal> createState() => _PoiPageStateSal();
}

class _PoiPageStateSal extends State<PoiPageSal> {
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
                    "Catedral de Sal", style: TextStyle(
                    fontSize: 30, color: Colors.white, fontStyle: FontStyle.italic
                )
                ),
                SizedBox(
                    height: 40
                ),
                Image(image: AssetImage('assets/images/catedral_de_sal.png')),
                SizedBox(
                    height: 30
                ),
                Text(
                    "Ciudad: ZIPAQUIRA, Cundinamarca", style: TextStyle(
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
                Card(

                  child:
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                    child: DefaultTextStyle(style: TextStyle(fontSize: 21, color: Colors.purple,), child: Text("La catedral de la Sal de Zipaquirá es considerada como uno de los logros arquitectónicos y artísticos más notables de la arquitectura colombiana, por lo que se le ha otorgado incluso el título de joya arquitectónica de la modernidad. La importancia de la Catedral, radica en su valor como patrimonio cultural, religioso y ambiental."),textAlign:  TextAlign.justify,),
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