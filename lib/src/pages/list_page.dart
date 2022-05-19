import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  double price = 154.70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: const EdgeInsets.only(left: 80),
            child: const Text(
              'your orders',
              style: TextStyle(color: Colors.black),
            ),
          ),
          elevation: 5,
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (_, int index) {
                return Column(
                  children: <Widget>[
                    _order(),
                    const Divider(
                      height: 1,
                      indent: 130,
                      thickness: 1,
                    ),
                  ],
                );
              }),
        ));
  }

  Widget _order() {
    return GestureDetector(
      onTap: () {
        print('The Pepe');
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        height: 85,
        child: Center(
          child: _ordercard(),
        ),
      ),
    );
  }

  Widget _ordercard() {
    return Container(
      height: 130,
      width: 400,
      child: Row(
        children: <Widget>[
          Container(
            height: 80,
            margin: const EdgeInsets.only(right: 10),
            child: Image.network(
              'https://static.displate.com/857x1200/displate/2018-11-30/c3ec1197d3ad652433bbebf9dec1a7af_9793d944a67664785f7eaf6d30033180.jpg',
            ),
          ),
          Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text('The Colonel Burgers',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Text(
                  "1 article - $price",
                  style: TextStyle(color: Colors.grey[600]),
                ),
                Text(
                  '03 - jun - Filled',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ]),
        ],
      ),
    );
  }
}
