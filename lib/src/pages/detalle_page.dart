import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ramayo_client_app/src/models/restaurant_model.dart';
import 'package:ramayo_client_app/src/pages/controllers/detalle_controller.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

class DetallePage extends StatefulWidget {


  @override
  _DetallePageState createState() => _DetallePageState();
}

class _DetallePageState extends State<DetallePage> {

  var _tabTextIndexSelected = 0;
  bool favorite = false;

  DetalleController _controller = new DetalleController();
  RestaurantModel restaurante = new RestaurantModel();

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

                  getFavoriteWidget(),

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

              FittedBox(
                child: Column(
                  children: List.generate(
                    10, 
                    (index){ 
                      return _cardPlatillo();
                    }
                  ),
                ),
              ),

            ],
          ),
          ),
      ),
    );
  }

  Widget _encabezado(){

    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(left: 10, top: 15),
                child: Text(
                 restaurante.name,
                 style: const TextStyle(
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
                        restaurante.leyenda,
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
               padding: const EdgeInsets.only(left: 55, top: 15),
               child: FlutterToggleTab(
                selectedBackgroundColors: [Colors.red],
                width: 70,  
                borderRadius: 15,
                selectedTextStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),
                unSelectedTextStyle: const TextStyle(
                 color: Colors.blue,
                 fontSize: 14,
                 fontWeight: FontWeight.w400
                ),
                labels: ["Delivery","Pick-up"], 
                selectedLabelIndex: (index) {  
	               print("Selected Index $_tabTextIndexSelected");
                 setState(() {
                   _tabTextIndexSelected = index;
                 });
                }, 
                selectedIndex: _tabTextIndexSelected,   
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
                  restaurante.direccion,
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

   return GestureDetector(
     onTap: _controller.goToItemsPage,
     child: Container(
      margin: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
   
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
   
                  const Text(
                  'Hamburguesa con queso',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 17//size.height * 0.021 //17
                  ),
                 ),
   
                 
                    
                     Container(
                       margin: const EdgeInsets.only(top: 5, right: 10, bottom: 5),
                       width: 270,//size.width * 0.63, //250
                       child: const Text(
                          'Rica hamburguesa con queso y tocino para toda la familia, con tomates y el deep de la casa y original',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 15//size.height * 0.0186 //15
                          ),
                       ),
                     ),
                        
                   const Padding(
                   padding: const EdgeInsets.only(bottom: 10),
                   child: Text(
                    '135.00',
                    style: TextStyle(
                      fontSize: 14,//size.height * 0.0176, //14
                      fontWeight: FontWeight.bold,
                    ),
                   ),
                 ),
   
              ],
            ),
          ),
   
          Container(
            margin: const EdgeInsets.only(right: 0),
            height: 100, //size.height * 0.125, //100
            width: 110, //size.width * 0.270, //110
            child: Image.network(
             'https://static.displate.com/857x1200/displate/2018-11-30/c3ec1197d3ad652433bbebf9dec1a7af_9793d944a67664785f7eaf6d30033180.jpg',
             fit: BoxFit.cover
            ),
          ),
         
          
        ],
      ),
     ),
   );
  }

  Widget getFavoriteWidget(){
    if(favorite != null){
       if(favorite){
         return IconButton(
           icon: const Icon(Icons.favorite),
           color: Colors.red,
           onPressed: (){
             setState(() {
               favorite = false;
             });
           },
         );
       } else {
         return IconButton(
           icon: const Icon(Icons.favorite_border),
           color: Colors.white,
           onPressed: (){
             setState(() {
               favorite = true;
             });
           },
         );
       }
    } else {

      return Container(
        margin: const EdgeInsets.all(15),
        width: 30,
        child: const CircularProgressIndicator()
      );
    }
  }





}

/*
 Container(
                 height: size.height * 0.075,
                 width: size.width * 0.70,
                 decoration: BoxDecoration( 
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.circular(30),
                 ),
               ),


 */