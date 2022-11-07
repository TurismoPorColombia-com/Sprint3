import 'package:flutter/material.dart';

class PoiPageAgustin extends StatefulWidget {
  const PoiPageAgustin({Key? key}) : super(key: key);

  @override
  State<PoiPageAgustin> createState() => _PoiPageStateAgustin();
}

class _PoiPageStateAgustin extends State<PoiPageAgustin> {
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
                    "San Agustin", style: TextStyle(
                    fontSize: 30, color: Colors.white, fontStyle: FontStyle.italic
                )
                ),
                SizedBox(
                    height: 40
                ),
                Image(image: AssetImage('assets/images/san-agustin.png')),
                SizedBox(
                    height: 30
                ),
                Text(
                    "Ciudad: SAN AGUSTIN,Huila.", style: TextStyle(
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
                    child: DefaultTextStyle(style: TextStyle(fontSize: 21, color: Colors.purple,), child: Text("El parque es considerado la necrópolis de mayor extensión de América pues en este lugar se encuentra uno de los yacimientos indígenas más antiguos, grandes e importantes del mundo, allí reposan vestigios de una civilización conocida como cultura Agustiniana, esta data de 3,300 años AC."),textAlign:  TextAlign.justify,),
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