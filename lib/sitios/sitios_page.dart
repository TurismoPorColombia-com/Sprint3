import 'package:flutter/material.dart';
import 'package:fondo_foto/sitios/poi_catedral_sal.dart';
import 'package:fondo_foto/sitios/poi_mompox.dart';
import 'package:fondo_foto/sitios/poi_monserrate.dart';
import 'package:fondo_foto/sitios/poi_nevados.dart';
import 'package:fondo_foto/sitios/poi_san_agustin.dart';
import 'package:fondo_foto/sitios/poi_san_andres.dart';
import 'package:fondo_foto/sitios/poi_san_felipe.dart';

class SitiosPage extends StatefulWidget {
  const SitiosPage({Key? key}) : super(key: key);

  @override
  State<SitiosPage> createState() => _SitiosPageState();
}

class _SitiosPageState extends State<SitiosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text("Sitios turisticos de Colombia", style: TextStyle(color: Colors.white),), backgroundColor: Colors.black,
      ),

      body:

        Center(
        child:
            SingleChildScrollView(
              child:
               Column(
                    children:  <Widget>[
                   Card(
                    shape: BeveledRectangleBorder(
                     borderRadius: BorderRadius.circular(5.0),
                      ),
                     color: const Color(0xffffffff),
                     child: Column(
                       mainAxisSize: MainAxisSize.min,
                       children: <Widget>[
                         const ListTile(
                           leading: Icon(Icons.castle),
                           title: Text('Castillo de San Felipe'),
                           subtitle: Text('Fortificacion ubicada en Cartagena de Indias'),
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: <Widget>[
                             TextButton(
                               child: const Text('VER SITIO'),
                               onPressed: () {Navigator.push(
                                   context,
                                   MaterialPageRoute(builder: (context) => const PoiPageFelipe()));},
                             ),
                             const SizedBox(width: 8),
                           ],
                         ),
                       ],
                     ),
                   ),
                      Card(
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        color: const Color(0xffffffff),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              leading: Icon(Icons.church),
                              title: Text('Mompox'),
                              subtitle: Text('Centro historico de la epoca colonial española'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                TextButton(
                                  child: const Text('VER SITIO'),
                                  onPressed: () {Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const PoiPageMompox()));},
                                ),
                                const SizedBox(width: 8),
                              ],
                            ),
                          ],
                        ),
                      ),
                       Card(
                         shape: BeveledRectangleBorder(
                           borderRadius: BorderRadius.circular(5.0),
                         ),
                         color: const Color(0xffffffff),
                         child: Column(
                           mainAxisSize: MainAxisSize.min,
                           children: <Widget>[
                             const ListTile(
                               leading: Icon(Icons.church),
                               title: Text('Monserrate'),
                               subtitle: Text('Iglesia, icono de la Capital, ubicado en la cima del cerro de Monserrate'),
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.end,
                               children: <Widget>[
                                 TextButton(
                                   child: const Text('VER SITIO'),
                                   onPressed: () {Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) => const PoiPageMonserrate()));},
                                 ),
                                 const SizedBox(width: 8),
                               ],
                             ),
                           ],
                         ),
                       ),
                      Card(
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        color: const Color(0xffffffff),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              leading: Icon(Icons.beach_access),
                              title: Text('San Andres islas'),
                              subtitle: Text('Islas de turismo del Caribe colombiano'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                TextButton(
                                  child: const Text('VER SITIO'),
                                  onPressed: () {Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const PoiPageAndres()));},
                                ),
                                const SizedBox(width: 8),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Card(
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        color: const Color(0xffffffff),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              leading: Icon(Icons.accessibility),
                              title: Text('San Agustin'),
                              subtitle: Text('Parque arqueologico San Agustin, importante espacio arqueologico de Colombia y del mundo.'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                TextButton(
                                  child: const Text('VER SITIO'),
                                  onPressed: () {Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const PoiPageAgustin()));},
                                ),
                                const SizedBox(width: 8),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Card(
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        color: const Color(0xffffffff),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              leading: Icon(Icons.image),
                              title: Text('Parque Natural los Nevados'),
                              subtitle: Text('En el parque se encuentran ubicados los nevados de Ruiz,Tolima, Santa Isabel'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                TextButton(
                                  child: const Text('VER SITIO'),
                                  onPressed: () {Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const PoiPageNevados()));},
                                ),
                                const SizedBox(width: 8),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Card(
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        color: const Color(0xffffffff),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              leading: Icon(Icons.church),
                              title: Text('Catedral de Sal'),
                              subtitle: Text('En su interior se encuentra una rica colección artística, especialmente de esculturas de sal y mármol en un ambiente lleno de un profundo sentido religioso que atrae a turistas'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                TextButton(
                                  child: const Text('VER SITIO'),
                                  onPressed: () {Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const PoiPageSal()));},
                                ),
                                const SizedBox(width: 8),
                              ],
                            ),
                          ],
                        ),
                      ),
                ],
              ),
            ),
        ),
    );
  }
}

