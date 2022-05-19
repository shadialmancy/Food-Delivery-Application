import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart' as Geolocator;
import 'package:permission_handler/permission_handler.dart';
import 'package:ramayo_client_app/src/pages/controllers/activate_location_controller.dart';

class ActiveLocationPage extends StatefulWidget {
  @override
  _ActiveLocationPageState createState() => _ActiveLocationPageState();
}

class _ActiveLocationPageState extends State<ActiveLocationPage>
    with WidgetsBindingObserver {
  ActivateLocationController _controller = new ActivateLocationController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      _controller.init(context);
    });
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance!.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    if (state == AppLifecycleState.resumed) {
      if (await Permission.location.isGranted &&
          await Geolocator.Geolocator.isLocationServiceEnabled()) {
        _controller.goToHomePage();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: // SingleChildScrollView(
          /* child: */ Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _title(),
          _description(),
          _inputAdress(),
          _ActiveLocationPage(),
        ],
      ),
      //),
    );
  }

  Widget _title() {
    return const Padding(
      padding: EdgeInsets.only(top: 85, left: 20),
      child: const Text('Find food near you',
          style: TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.w500)),
    );
  }

  Widget _description() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Text('For our app to work properly we need to know your location',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey[600],
            fontWeight: FontWeight.normal,
          )),
    );
  }

  Widget _inputAdress() {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
      width: 389,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: TextFormField(
        controller: _controller.adressController,
        keyboardType: TextInputType.streetAddress,
        decoration: const InputDecoration(
          hintText: 'Enter your address',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(color: Colors.black54),
        ),
      ),
    );
  }

  Widget _ActiveLocationPage() {
    return GestureDetector(
      onTap: () async {
        final status = await Permission.location.request();
        final gps = await Geolocator.Geolocator.isLocationServiceEnabled();

        if (gps != true) {
          const snackBar = SnackBar(
            content: const Text('Activate the GPS'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        } else {
          this._controller.activarGPS(context, status);
        }
      },
      child: Container(
        margin: const EdgeInsets.only(top: 50, left: 20),
        child: Row(
          children: <Widget>[
            const Icon(FontAwesomeIcons.locationArrow),
            const SizedBox(width: 22),
            const Text('Activate Location',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}
