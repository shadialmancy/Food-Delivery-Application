import 'package:flutter/material.dart';

class SuperPage extends StatefulWidget {

  @override
  _SuperPageState createState() => _SuperPageState();
}

class _SuperPageState extends State<SuperPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Super'),
      )
    );
  }
}