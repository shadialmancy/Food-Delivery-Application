import 'package:flutter/material.dart';
import 'package:ramayo_client_app/src/models/category_model.dart';
import 'package:ramayo_client_app/src/utils/my_colors.dart';


class CategoryPage extends StatefulWidget {

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  List<CategoryModel> categorias = [new CategoryModel(), new CategoryModel(), new CategoryModel()];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
           title: const Center(child: Text('Delivery')),
           elevation: 5,
           backgroundColor: MyColors.primaryOrange,
           leading: const Icon(Icons.menu, color: Colors.white),     
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 8, right: 8, top: 10),
        child: _prueba()
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
    itemCount: categorias.length,
    itemBuilder: (BuildContext context, index) {
     return _contenedor(categorias[index]);
    }
   );
 }



 Widget _contenedor(CategoryModel categorias){
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
              categorias.image,
              fit: BoxFit.fill
            ),
          ),
   
          Container(
            height: 190,
            width: 190,
            color: Colors.black.withOpacity(0.4),
            child:  Center(
              child: Text(
                categorias.title,
                style: const TextStyle(
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