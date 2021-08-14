import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:ramayo_client_app/src/pages/controllers/home_controller.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
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
           title: Center(child: Text('Delivery')),
           elevation: 0,
           backgroundColor: Colors.red,
           leading: Icon(Icons.menu, color: Colors.white),
           actions: <Widget>[
             
               IconButton(
                 icon: Icon(Icons.search), 
                 onPressed: (){},
               )
           ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: Column(            
              children: <Widget>[
                               
                 _card1(context),
                 
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

              SizedBox(height: 10),

              ListTile(
                 leading: Icon(Icons.timer),
                 title: Text("Comida China Food Inn"),
                 subtitle: Text("Comida estilo asiatica para comer en casa"),
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                     
                     Icon(Icons.star, color: Colors.yellow),
                     Icon(Icons.star, color: Colors.yellow),
                     Icon(Icons.star, color: Colors.yellow),
                     Icon(Icons.star, color: Colors.yellow),
                     Icon(Icons.star, color: Colors.yellow),

                     SizedBox(width: 30,),
                      
                     FlatButton(
                        child: Text("Cancelar"),
                        onPressed: (){},
                     ),

                     FlatButton(
                       child: Text("Aceptar"),
                       onPressed: (){},
                     ),
                ],
              ),
          ],
        ),
     );
    return GestureDetector(
      onTap: _controller.goToDetallesPage,
      child: Container(
        margin: EdgeInsets.only(top: 30, left: 30, right: 30),
        child: ClipRRect(
           child: card,
           borderRadius: BorderRadius.circular(30),
        ),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: <BoxShadow>[
             BoxShadow(
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
