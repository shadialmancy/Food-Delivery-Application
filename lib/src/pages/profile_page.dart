import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ramayo_client_app/src/pages/controllers/profile_controller.dart';

class ProfilePage extends StatefulWidget {

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {


  ProfileController _controller = new ProfileController();

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
      body: Column(
        children: <Widget>[

          _header(),

          const Divider(
            thickness: 1,
          ),

          _favorite(),

          const Divider(
            thickness: 1,
            indent: 68
          ),

          _pago(),

          const Divider(
            thickness: 1,
            indent: 68
          ),

          _ayuda(),

          const Divider(
            thickness: 1,
            indent: 68
          ),

          _notificaciones(),

        ],
      ),
    );
  }

  Widget _header(){
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 60, right: 20, bottom: 20),
      child: Row(
        children: <Widget>[

          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(40)
            ),
            child: const Center(
              child: Icon(
                FontAwesomeIcons.userAlt,
                size: 45
              ),
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

            const Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
               'Domenica Duch',
               style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w500
               ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: Text(
               'Ver cuenta',
               style: TextStyle(
                color: Colors.greenAccent[400],
                fontSize: 14,
                fontWeight: FontWeight.w500
               ),
              ),
            ),
            ],
          ),


        ],
      ),
    );
  }

  Widget _favorite(){
    return ListTile(
      onTap: _controller.goToFavoriteRestaurant,
      leading: const Icon(
        Icons.favorite,
        color: Colors.black
      ),
      title: const Text(
       'Tus Favoritos',
       style: TextStyle(
         fontSize: 18,
         color: Colors.black,
         fontWeight: FontWeight.w500
       ),
      ),
      trailing: const Icon(
        FontAwesomeIcons.chevronRight,
      ),
    );
  }

  Widget _pago(){
    return ListTile(
      onTap: _controller.goToPagoPage,
      leading: const Icon(
        FontAwesomeIcons.creditCard,
        color: Colors.black
      ),
      title: const Text(
       'Pago',
       style: TextStyle(
         fontSize: 18,
         color: Colors.black,
         fontWeight: FontWeight.w500
       ),
      ),
      trailing: const Icon(
        FontAwesomeIcons.chevronRight,
      ),
    );
  }

  Widget _ayuda(){
    return const ListTile(
      leading: Icon(
        FontAwesomeIcons.lifeRing,
        color: Colors.black
      ),
      title: Text(
       'Ayuda',
       style: TextStyle(
         fontSize: 18,
         color: Colors.black,
         fontWeight: FontWeight.w500
       ),
      ),
      trailing: Icon(
        FontAwesomeIcons.chevronRight,
      ),
    );
  }

  Widget _notificaciones(){
    return ListTile(
      onTap: _controller.goToNotificationPage,
      leading: const Icon(
        FontAwesomeIcons.bell,
        color: Colors.black
      ),
      title: const Text(
       'Notificaciones',
       style: TextStyle(
         fontSize: 18,
         color: Colors.black,
         fontWeight: FontWeight.w500
       ),
      ),
      trailing: const Icon(
        FontAwesomeIcons.chevronRight,
      ),
    );
  }


}                        