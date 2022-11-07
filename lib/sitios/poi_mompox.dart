import 'package:flutter/material.dart';

class PoiPageMompox extends StatefulWidget {
  const PoiPageMompox({Key? key}) : super(key: key);

  @override
  State<PoiPageMompox> createState() => _PoiPageStateMompox();
}

class _PoiPageStateMompox extends State<PoiPageMompox> {
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
                    "Santa Cruz de Mompox", style: TextStyle(
                    fontSize: 30, color: Colors.white, fontStyle: FontStyle.italic
                )
                ),
                SizedBox(
                    height: 40
                ),
                Image(image: AssetImage('assets/images/mompox.png')),
                SizedBox(
                    height: 30
                ),
                Text(
                    "Ciudad: MOMPOX, Bolivar", style: TextStyle(
                  fontSize: 21, color: Colors.white,
                )
                ),
                Text(
                    "Temp: 30°C", style: TextStyle(
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
                    child: DefaultTextStyle(style: TextStyle(fontSize: 21, color: Colors.purple,), child: Text(" En mérito del estado de conservación de su centro histórico fue declarada Monumento Nacional en 1959 y Patrimonio de la Humanidad por las UNESCO en 1995. Su cabecera municipal está a 248 km de Cartagena de Indias. Hace parte de la Red de pueblos patrimonio de Colombia."),textAlign:  TextAlign.justify,),
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