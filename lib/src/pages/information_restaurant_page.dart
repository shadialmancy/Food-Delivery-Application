import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//   /informationRestaurant
class InformationRestaurant extends StatefulWidget {

  @override
  _InformationRestaurantState createState() => _InformationRestaurantState();
}

class _InformationRestaurantState extends State<InformationRestaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(FontAwesomeIcons.arrowLeft),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

           _mapa(),

           _title(),

           _descripcion(),

           _direccion(),

           _horario(),

           _calificaciones(),

           _phone(),
 



        ],
      ),
    );
  }

  Widget _mapa(){
    return Container(
      height: 170,
      width: double.infinity,
      color: Colors.blue,
    );
  }

  Widget _title(){
    return const Padding(
             padding: const EdgeInsets.only(left: 10, top: 10),
             child: const Text(
               'La Coronela Hamburguesas',
               style: TextStyle(
                 color: Colors.black,
                 fontWeight: FontWeight.bold,
                 fontSize: 20
               ),
             ),
    );
  }

 Widget _descripcion(){
   return Padding(
             padding: const EdgeInsets.only(left: 10, top: 10),
             child: Text(
               'Food & Bear',
               style: TextStyle(
                 color: Colors.grey[600],
                 fontWeight: FontWeight.bold,
                 fontSize: 18
               ),
             ),
   );
 }

 Widget _direccion(){
   return const ListTile(
     leading: Icon(
       FontAwesomeIcons.mapMarkerAlt,
     ),
     title: Text(
       'Calle 20 #187 Col. San pedro cholul',
     ),
     trailing: Icon(
       FontAwesomeIcons.arrowRight,

     ),
   );
 }

 Widget _horario(){
   return const ListTile(
     leading: Icon(
       FontAwesomeIcons.clock,
     ),
     title: Text(
       'abierto hasta las 10 PM',
     ),
     trailing: Icon(
       FontAwesomeIcons.plus,

     ),
   );
 }

 Widget _calificaciones(){
   return const ListTile(
     leading: Icon(
       FontAwesomeIcons.starOfDavid,
     ),
     title: Text(
       '4.5 (54 Calificaciones)',
     ),
   );
 }

 Widget _phone(){
   return const ListTile(
     leading: Icon(
       FontAwesomeIcons.phone,
     ),
     title: Text(
       '938 146 1964',
     ),
   );
 }







}
