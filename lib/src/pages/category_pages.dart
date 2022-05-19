import 'package:flutter/material.dart';
import 'package:ramayo_client_app/src/models/category_model.dart';
import 'package:ramayo_client_app/src/utils/my_colors.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List<CategoryModel> categorias = [
    new CategoryModel(),
    new CategoryModel(),
    new CategoryModel()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Delivery'),
        elevation: 5,
        backgroundColor: MyColors.primaryOrange,
        leading: const Icon(Icons.menu, color: Colors.white),
      ),
      body: Container(
          margin: const EdgeInsets.only(left: 8, right: 8, top: 10),
          child: _Test()),
    );
  }

  Widget _Test() {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: categorias.length,
        itemBuilder: (BuildContext context, index) {
          return _container(categorias[index]);
        });
  }

  Widget _container(CategoryModel categorias) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Image.network(categorias.image, fit: BoxFit.cover),
          ),
          Container(
            color: Colors.black.withOpacity(0.4),
            child: Center(
              child: Text(categorias.title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            ),
          )
        ],
      )),
    );
  }
}
