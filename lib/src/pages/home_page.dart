import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:ramayo_client_app/src/pages/category_pages.dart';
import 'package:ramayo_client_app/src/pages/home.dart';
import 'package:ramayo_client_app/src/pages/list_page.dart';
import 'package:ramayo_client_app/src/pages/profile_page.dart';
import 'package:ramayo_client_app/src/pages/super_page.dart';
import 'package:ramayo_client_app/src/utils/my_colors.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
 
  late TabController _tabController;
 
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      setState(() {
      });
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
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: <Widget>[
             
             Home(),  
             
             CategoryPage(), 
             
             SuperPage(), 
             
             ListPage(), 
             
             ProfilePage(),

          ],
        ),
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Colors.white,
          color: MyColors.primaryColor,
          activeColor: MyColors.primaryOrange,
          style: TabStyle.reactCircle,
          height: 60,
          items: [
            const TabItem(icon: Icons.home, title: 'Home'),
            const TabItem(icon: Icons.map, title: 'Category'),
            const TabItem(icon: Icons.add, title: 'Super'),
            const TabItem(icon: Icons.message, title: 'List'),
            const TabItem(icon: Icons.people, title: 'Profile'),
          ],
          initialActiveIndex: 0,
          onTap: (int i ){
            setState(() {
              _tabController.index = i;
            });
          },
        ),
    );
  }
}