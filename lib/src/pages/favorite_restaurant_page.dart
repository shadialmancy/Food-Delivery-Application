import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FavoriteRestaurantPage extends StatefulWidget {
  FavoriteRestaurantPage({Key? key}) : super(key: key);

  @override
  _FavoriteRestaurantPageState createState() => _FavoriteRestaurantPageState();
}

class _FavoriteRestaurantPageState extends State<FavoriteRestaurantPage> {

  double precio = 11.9;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          FontAwesomeIcons.arrowLeft,
          color: Colors.black
        ),
        title: const Padding(
          padding: const EdgeInsets.only(left: 72),
          child: const Text(
            'Tus Favoritos',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (_, int index){
           return Column(
             children: <Widget>[

              _contenedor(),

              const Divider(
                height: 1,
                indent: 130,
                thickness: 1,
              ),

             ],
           );
          }
        ),
      ),
    );
  }

  Widget _contenedor(){
    return GestureDetector(
      onTap: (){
        print('EL pepe');
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        height: 85,
        child: Center(
          child: _tarjetaRestaurante(),
        ),
      ),
    );
  }

  Widget _tarjetaRestaurante(){
   return Container(
    height: 130,
    width: 400,
    child: Row(
      children: <Widget>[
        
        Container(
          height: 80,
          margin: const EdgeInsets.only(right: 10),
          child: Image.network(
            'https://static.displate.com/857x1200/displate/2018-11-30/c3ec1197d3ad652433bbebf9dec1a7af_9793d944a67664785f7eaf6d30033180.jpg',
          ),
        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

           const SizedBox(height: 5), 

           const Text(
            'La Coronela Hamburguesas',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold
            )
           ),
  
           const SizedBox(height: 7),

           Text(
            'Pide de un restaurante local',
            style: TextStyle(
              color: Colors.grey[600]
            ),
           ),

          ]
        ),

      ],
    ),
   );
  }
}