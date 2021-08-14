import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:ramayo_client_app/src/pages/controllers/home_controller.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  HomeController _controller = new HomeController();

  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];

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
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Column(            
              children: <Widget>[
                               
                 _card1(context),
                 
                 _card1(context),
                 
                 _card1(context),

                 _scrollHorizontal(context),

                 _card1(context),

                 _card1(context),
              ],
            ),
          ),
        ),
    );
  }

  Widget _scrollHorizontal(BuildContext context){
   return Container(
     margin: const EdgeInsets.only(top: 30),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
 
         const Padding(
           padding: const EdgeInsets.only(left: 30),
           child: const Text(
             'Promociones',
             style: TextStyle(
               fontSize: 25,
               fontWeight: FontWeight.bold
             ),
           )
         ),

         Container(
          padding: const EdgeInsets.only(top: 24, bottom: 5),
          height: MediaQuery.of(context).size.height * 0.25,
          child: ListView.builder(
           scrollDirection: Axis.horizontal,
           itemCount: numbers.length, itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Card(
                margin: const EdgeInsets.only(left: 30),
                color: Colors.blue,
                child: Container(
                 child: Center(
                   child: Text(
                     numbers[index].toString(), 
                     style: const TextStyle(
                       color: Colors.white, 
                       fontSize: 36.0
                     ),
                   )
                 ),
                ),
              ),
            );
           }
          )
         ),
       ],
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

}