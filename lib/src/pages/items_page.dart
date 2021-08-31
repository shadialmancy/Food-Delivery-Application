 import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ramayo_client_app/src/pages/controllers/items_Controller.dart';

 class ItemsPage extends StatefulWidget {
 
   @override
   _ItemsPageState createState() => _ItemsPageState();
 }
 
 class _ItemsPageState extends State<ItemsPage> {
   
   ItemsController _controller = new ItemsController();

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
         backgroundColor: Colors.white,
         elevation: 0,
         title: const Text(
           'Hamburguesa con queso',
           style: TextStyle(
             color: Colors.black,
             fontWeight: FontWeight.bold
           ),
         ),
         leading: IconButton(
           icon: const Icon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.black
           ),
           onPressed: (){},
         ),
       ),
       body: ListView(
         children: <Widget>[

           _cabecera(),

           nameYdescripcion(),

           
 
           

          
 
           

          

         ],
       ),
     );
   }

   Widget _cabecera(){
     return Container(
      width: double.infinity,
      height: 160,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage('https://static.displate.com/857x1200/displate/2018-11-30/c3ec1197d3ad652433bbebf9dec1a7af_9793d944a67664785f7eaf6d30033180.jpg'),
        ),
      )
     );
   }
 
   Widget nameYdescripcion(){
     return Padding(
       padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 10),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[

            const Text(
              'Hamburguesa con queso',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.bold
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              'Restaurante de hamburguesas estilo libanesas al carbon shahskdbskdbkbfkdbc fdshsbc sdh csdbchds bchdb vhsbdvshvbhbsa',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.justify,
            ),
            

         ],
       ),
     );
   }
 
 
   
 
 
 
 
 
 
 
 
 
 
 
 
 
 }

 