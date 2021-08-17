import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:ramayo_client_app/src/pages/controllers/home_controller.dart';
import 'package:ramayo_client_app/src/utils/my_colors.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  HomeController _controller = new HomeController();

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
           backgroundColor: MyColors.primaryOrange,
           leading: const Icon(Icons.menu, color: Colors.white),
           actions: <Widget>[
             
               IconButton(
                 icon: const Icon(Icons.search),
                 onPressed: (){},
               )
           ],
        ),
      body: SingleChildScrollView(
          child: Padding(
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
        ),
    );
  }


 Widget _card1(BuildContext context){
     final card = Container(      
        child: Column(
          children: <Widget>[
        
              Image.network(
                'https://static.displate.com/857x1200/displate/2018-11-30/c3ec1197d3ad652433bbebf9dec1a7af_9793d944a67664785f7eaf6d30033180.jpg',                             
              ),

              const SizedBox(height: 10),

              const ListTile(
                 
                 title: Text("Comida China Food Inn"),
                 subtitle: Text("Comida estilo asiatica para comer en casa"),
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                     
                     const SizedBox(width: 15),

                     const Icon(Icons.star, color: Colors.yellow),
                     const Icon(Icons.star, color: Colors.yellow),
                     const Icon(Icons.star, color: Colors.yellow),
                     const Icon(Icons.star, color: Colors.yellow),
                     const Icon(Icons.star, color: Colors.yellow),

                     const SizedBox(width: 70),
                      
                     TextButton(
                       onPressed: (){}, 
                       child: const Text('Cancelar'),
                     ),

                     TextButton(
                       onPressed: (){},
                       child: const Text('Aceptar'),
                     ),
                ],
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
           borderRadius: BorderRadius.circular(30),
        ),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
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