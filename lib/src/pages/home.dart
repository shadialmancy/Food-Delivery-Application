import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ramayo_client_app/src/models/restaurant_model.dart';
import 'package:ramayo_client_app/src/pages/controllers/home_controller.dart';
import 'package:ramayo_client_app/src/utils/my_colors.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  HomeController _controller = new HomeController();
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
      appBar: AppBar(
           title: const Center(child: Text('Delivery')),
           elevation: 5,
           leading:  IconButton(
            icon: const Icon( FontAwesomeIcons.signOutAlt),
            onPressed: _controller.goOut,
           ),
           backgroundColor: MyColors.primaryOrange,
           actions: <Widget>[
             
               IconButton(
                 icon: const Icon(Icons.search),
                 onPressed: (){},
               )
           ],
      ),
      body: ListView(
        children: [
          
          
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Column(            
              children: <Widget>[
                               
                 _card1(context),
                 
                 _card1(context),
                 
                 _card1(context),

                 const SizedBox(height: 20),

                 _scrollHorizontal(context),

                 _card1(context),

                 _card1(context),

                 const SizedBox(height: 20),

                 _scrollHorizontal(context),

                 _card1(context),

                 _card1(context),

              ],
            ),
          ),
        ]
      ),
    );
  }


 Widget _card1(BuildContext context){
     final card = Container(      
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
        

              FadeInImage(
                image: NetworkImage(restaurante.image),
                placeholder: const AssetImage('assets/jar-loading.gif'), 
                fadeInDuration: const Duration(milliseconds: 200),
              ),

              

              FittedBox(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
              
                     Padding(
                     padding: const EdgeInsets.only(left: 15, top: 5),
                     child: Text(
                       restaurante.name,
                       style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500
                       ),
                     ),
                    ),
              
                    Padding(
                      padding: const EdgeInsets.only(left: 60, top: 5),
                      child: Text(
                       restaurante.calificacion,
                       style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                       )
                      ),
                    ),
              
                    const Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: const Icon(
                       Icons.star, 
                       color: Colors.amber,
                      ),
                    ),
              
                  ]
                ),
              ),
              
               Padding(
                padding: const EdgeInsets.only(left: 15, top: 5, bottom: 8),
                child:  Text(
                  restaurante.descripcion,
                   style: TextStyle(
                    color: Colors.grey[600]
                   ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                       

                       Padding(
                         padding: const EdgeInsets.only(left: 17, right: 10),
                         child: Icon(
                          FontAwesomeIcons.moneyBillAlt,
                          size: 17,
                          color: Colors.greenAccent[400]
                         ),
                       ),
                        
                       Text(
                         restaurante.costoEnvio,
                         style: TextStyle(
                           color: Colors.grey[600]
                         )
                       ),

                       const Padding(
                         padding: const EdgeInsets.only(left: 30, right: 10),
                         child: Icon(
                          FontAwesomeIcons.clock,
                          size: 17,
                         ),
                       ),

                       Text(
                         restaurante.tiempo,
                         style: TextStyle(
                           color: Colors.grey[600],
                         ),
                       )
                  ],
                ),
              ),

              
          ],
        ),
     );
    return GestureDetector(
      onTap: _controller.goToDetallesPage,
      child: Container(
        margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
        child: ClipRRect(
           child: card,
           borderRadius: BorderRadius.circular(20),
        ),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: <BoxShadow>[
             const BoxShadow(
               color: Colors.black26,
               blurRadius: 10,
               spreadRadius: 2,
               offset: Offset(2, 10),
             ),
          ],
        ),
      ),
    );
 }

 Widget _scrollHorizontal(BuildContext context){
   return Container(
         height: 220,
         width: double.infinity,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[

              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (_, int index){
                    return contenedores();
                  }
                ),
              ),
           ],
         ),
   );
  }

 Widget contenedores(){
   return Container(
     width: 270,
     margin: const EdgeInsets.only(left: 20),
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[

          smallCard(),

       ],
     ),
   );
 }

 Widget smallCard(){
   return Container(
          height: 180,
          width: 250,
          child: Column(
            children: <Widget>[
          
                Container(
                  height: 100,
                  width: 250,
                  child: Image.network(
                   'https://static.displate.com/857x1200/displate/2018-11-30/c3ec1197d3ad652433bbebf9dec1a7af_9793d944a67664785f7eaf6d30033180.jpg',
                   fit: BoxFit.fill
                  ),
                ),
          
               
               const SizedBox(height: 10),
               

               Row(
                 children: <Widget>[

                  const SizedBox(width: 16),

                   const Text(
                     'La Muralla China',
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 18
                     ),
                   ),

                   const SizedBox(width: 60),

                   Container(
                     height: 30,
                     width: 30,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(30),
                       color: Colors.grey[300]
                     ),
                     child: const Center(
                       child: Text(
                         '4.4',
                         style: TextStyle(
                           color: Colors.black,
                           fontWeight: FontWeight.bold
                         )
                       )
                     ),
                   ),
                 ],
               ),

               const SizedBox(height: 3),

               Row(
                 children: <Widget>[

                   const SizedBox(width: 16),

                   Icon(
                     Icons.money,
                     color: Colors.greenAccent[400]
                   ),

                   Text(
                    ' - Costo de envio MXN 22.0',
                    style: TextStyle(
                      color: Colors.grey[800]
                    )
                   ),

                 ],
               ),
          
            ],
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            //borderRadius: BorderRadius.circular(30),
            boxShadow: <BoxShadow>[
             const BoxShadow(
               color: Colors.black26,
               blurRadius: 10,
               spreadRadius: 2,
               offset: Offset(2, 10),
             ),
            ],
          ),
   );
 }



}