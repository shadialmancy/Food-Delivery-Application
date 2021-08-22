import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ramayo_client_app/src/pages/controllers/detalle_controller.dart';

class DetallePage extends StatefulWidget {


  @override
  _DetallePageState createState() => _DetallePageState();
}

class _DetallePageState extends State<DetallePage> {

  DetalleController _controller = new DetalleController();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      _controller.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2, 
        child: NestedScrollView(
          headerSliverBuilder: (context, bool innerBoxIsScrolled){
            return [
              SliverAppBar(
                leading: IconButton(
                  icon: const Icon(FontAwesomeIcons.arrowLeft),
                  onPressed: _controller.backToHome,
                ),
                expandedHeight: 160,
                flexibleSpace: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('https://static.displate.com/857x1200/displate/2018-11-30/c3ec1197d3ad652433bbebf9dec1a7af_9793d944a67664785f7eaf6d30033180.jpg'),
                    ),
                  ),
                  child: Container(
                    color: Colors.black.withOpacity(0.5)
                  ),
                ),
                pinned: true,
                actions: <Widget>[

                  IconButton(
                    icon: const Icon(Icons.favorite),
                    onPressed: (){},
                  ),

                ],
              )
            ];
          },
          body: ListView(
            padding: const EdgeInsets.only(top: 0),
            children: <Widget>[

              _encabezado(),

              _infoRestaurante(),

              const Divider(
                thickness: 1,
              ),

              Column(
                children: List.generate(
                  10, 
                  (index){ 
                    return _cardPlatillo();
                  }
                ),
              ),

            ],
          ),
          ),
        ),
    );
  }

  Widget _encabezado(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

              const Padding(
                padding: const EdgeInsets.only(left: 10, top: 15),
                child: const Text(
                 'La Coronela Hamburguesas',
                 style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500
                 ),
                ),
              ),


             Padding(
               padding: const EdgeInsets.only(top: 11),
               child: Row(
                children: <Widget>[

                   
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Hamburguesa & chill',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 17
                        ),
                      ),
                    ),
                  ),

                  Text(
                    '4.5',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    )
                  ),

                  const SizedBox(width: 9),

                  const Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: const Icon(
                      FontAwesomeIcons.starOfDavid,
                      color: Colors.amber,
                      size: 29
                    ),
                  ),
                ],
               ),
             ),

             Padding(
               padding: const EdgeInsets.only(left: 50, top: 15),
               child: Container(
                 height: 60,
                 width: 310,
                 decoration: BoxDecoration( 
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.circular(30),
                 ),
               ),
             ),
             
            const Divider(
              thickness: 2, 
             ),
      ],
    );
  }

  Widget _infoRestaurante(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        const Padding(
         padding: EdgeInsets.only(left: 10, top: 15),
         child: Text(
          'Restaurante informacion',
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
         ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 10, top: 10, bottom: 20),
          child: Row(
            children: <Widget>[

              const Icon(
                FontAwesomeIcons.mapMarkerAlt,
                color: Colors.black,
              ),

              const SizedBox(width: 3),

              Expanded(
                child: Text(
                  'Calle 20 #187 Col. Altabrisa',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: _controller.goToInformation,
                  child: Text(
                    'mas informacion',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.greenAccent[400],
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),


      ],
    );
  }
 
  Widget _cardPlatillo(){
   return Container(
    height: 120,
    margin: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[

        Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

               const Text(
                'Hamburguesa con queso',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 17
                ),
               ),

               Expanded(
                 child: Container(
                   margin: const EdgeInsets.only(top: 5),
                   height: 10,
                   width: 250,
                   child: const Text(
                    'Rica hamburguesa con queso y tocino para toda la familia, con tomates y el deep de la casa y original',
                    textAlign: TextAlign.justify,
                   ),
                 ),
               ),
                      
               const Padding(
                 padding: const EdgeInsets.only(bottom: 10),
                 child: Text(
                  '135.00',
                 ),
               ),

            ],
          ),
        ),

        Container(
          margin: const EdgeInsets.only(right: 10),
          height: 100,
          width: 100,
          child: Image.network(
           'https://static.displate.com/857x1200/displate/2018-11-30/c3ec1197d3ad652433bbebf9dec1a7af_9793d944a67664785f7eaf6d30033180.jpg',
           fit: BoxFit.fill
          ),
        ),
       
        
      ],
    ),
   );
  }







}