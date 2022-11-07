import 'package:flutter/material.dart';

class PoiPageFelipe extends StatefulWidget {
  const PoiPageFelipe({Key? key}) : super(key: key);

  @override
  State<PoiPageFelipe> createState() => _PoiPageStateFelipe();
}

class _PoiPageStateFelipe extends State<PoiPageFelipe> {
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
                    "Castillo de San Felipe", style: TextStyle(
                    fontSize: 30, color: Colors.white, fontStyle: FontStyle.italic
                )
                ),
                SizedBox(
                    height: 40
                ),
                Image(image: AssetImage('assets/images/san-felipe.png')),
                SizedBox(
                    height: 30
                ),
                Text(
                    "Ciudad: CARTAGENA", style: TextStyle(
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
                    child: DefaultTextStyle(style: TextStyle(fontSize: 21, color: Colors.purple,), child: Text(" Está situado sobre un cerro llamado San Lázaro y fue construido en 1657 durante la época colonial española. Sufrió constantes asedios por parte de los ingleses y franceses, siendo el comandante francés Barón de Pointis quien tomara el castillo a mediados de 1697."),textAlign:  TextAlign.justify,),
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