import 'package:flutter/material.dart';

class PoiPageAndres extends StatefulWidget {
  const PoiPageAndres({Key? key}) : super(key: key);

  @override
  State<PoiPageAndres> createState() => _PoiPageStateAndres();
}

class _PoiPageStateAndres extends State<PoiPageAndres> {
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
                    "San Andres y Providencia", style: TextStyle(
                    fontSize: 30, color: Colors.white, fontStyle: FontStyle.italic
                )
                ),
                SizedBox(
                    height: 40
                ),
                Image(image: AssetImage('assets/images/san-andres.png')),
                SizedBox(
                    height: 30
                ),
                Text(
                    "Islas: SAN ANDRES y PROVIDENCIA", style: TextStyle(
                  fontSize: 21, color: Colors.white,
                )
                ),
                Text(
                    "Temp: 35°C", style: TextStyle(
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
                    child: DefaultTextStyle(style: TextStyle(fontSize: 21, color: Colors.purple,), child: Text("Está conformado por dos municipios: San Andrés y Providencia y Santa Catalina Islas. Es el único departamento insular de Colombia y además de San Andrés, la mayor isla del país, se compone de otras islas, cayos e islotes sobre la plataforma volcánica del occidente del mar de las Antillas."),textAlign:  TextAlign.justify,),
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