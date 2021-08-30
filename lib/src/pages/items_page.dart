 import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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
     return const Scaffold(
       body: Center(
         child: Text('items'),
       ),
     );
   }
 }