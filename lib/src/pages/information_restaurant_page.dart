import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//   /informationRestaurant
class InformationRestaurant extends StatefulWidget {
  @override
  _InformationRestaurantState createState() => _InformationRestaurantState();
}

class _InformationRestaurantState extends State<InformationRestaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(FontAwesomeIcons.arrowLeft),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _map(),
          _title(),
          _description(),
          _direction(),
          _schedule(),
          _ratings(),
          _phone(),
        ],
      ),
    );
  }

  Widget _map() {
    return Container(
      height: 170,
      width: double.infinity,
      color: Colors.blue,
    );
  }

  Widget _title() {
    return const Padding(
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: const Text(
        'The Colonel Burgers',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }

  Widget _description() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: Text(
        'Food & Beer',
        style: TextStyle(
            color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 18),
      ),
    );
  }

  Widget _direction() {
    return const ListTile(
      leading: Icon(
        FontAwesomeIcons.mapMarkerAlt,
      ),
      title: Text(
        'Call 20 #187 Col. San Pedro Cholul',
      ),
      trailing: Icon(
        FontAwesomeIcons.arrowRight,
      ),
    );
  }

  Widget _schedule() {
    return const ListTile(
      leading: Icon(
        FontAwesomeIcons.clock,
      ),
      title: Text(
        'open until 10 PM',
      ),
      trailing: Icon(
        FontAwesomeIcons.plus,
      ),
    );
  }

  Widget _ratings() {
    return const ListTile(
      leading: Icon(
        FontAwesomeIcons.starOfDavid,
      ),
      title: Text(
        '4.5 (54 Ratings)',
      ),
    );
  }

  Widget _phone() {
    return const ListTile(
      leading: Icon(
        FontAwesomeIcons.phone,
      ),
      title: Text(
        '938 146 1964',
      ),
    );
  }
}
