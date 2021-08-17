import 'package:flutter/material.dart';
import 'package:ramayo_client_app/src/utils/my_colors.dart';


class CategoryPage extends StatefulWidget {

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  final List<Map> myProducts =
      List.generate(20, (index) => {"id": index, "name": "Product $index"})
          .toList();

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
      body: Container(
        margin: const EdgeInsets.only(left: 8, right: 8, top: 10),
        child: _prueba()
      ),
    );
  }



 Widget _contenedor(){
   return GestureDetector(
     onTap: (){},
     child: Container(
      height: 190,
      width: 190,
      child: Stack(
        children: <Widget>[
   
          Container(
            height: 190,
            width: 190,
            color: Colors.orange,
            child: Image.network(
              'https://static.displate.com/857x1200/displate/2018-11-30/c3ec1197d3ad652433bbebf9dec1a7af_9793d944a67664785f7eaf6d30033180.jpg',
              fit: BoxFit.fill
            ),
          ),
   
          Container(
            height: 190,
            width: 190,
            color: Colors.black.withOpacity(0.4),
            child: const Center(
              child: Text(
                'Italiana',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                )
              ),
            ),
          )
   
        ],
      )
     ),
   );
 }


 Widget _prueba(){
   return GridView.builder(
    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
     maxCrossAxisExtent: 200,
     childAspectRatio: 3 / 2,
     crossAxisSpacing: 20,
     mainAxisSpacing: 20
    ),
    itemCount: myProducts.length,
    itemBuilder: (BuildContext ctx, index) {
     return _contenedor();
    }
   );
 }


 /*
  GridView.builder(
         itemCount: 20,
         itemBuilder: (context, index) => _carril(),
         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 2,
           childAspectRatio: 1,
           crossAxisSpacing: 2
         ), 
      ),


   Container(
      alignment: Alignment.center,
      child: Text(myProducts[index]["name"]),
      decoration: BoxDecoration(
       color: Colors.amber,
       borderRadius: BorderRadius.circular(15)
      ),
     );


  
  */
}