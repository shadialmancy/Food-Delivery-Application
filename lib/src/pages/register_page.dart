import 'package:flutter/material.dart';
import 'package:ramayo_client_app/src/pages/registration/carrusel_partial_0_number_page.dart';
import 'package:ramayo_client_app/src/pages/registration/carrusel_partial_2_register_email.dart';
import 'package:ramayo_client_app/src/pages/registration/carrusel_partial_4_register_name.dart';
import 'package:ramayo_client_app/src/pages/registration/carrusel_partial_3_register_password.dart';
import 'package:ramayo_client_app/src/pages/verifica_number_page.dart';

class PageRegistration extends StatefulWidget {
  @override
  _PageRegistrationState createState() => _PageRegistrationState();
}

class _PageRegistrationState extends State<PageRegistration> with TickerProviderStateMixin {
  final List<Widget> listPage = [
    NumberPage(),
    VerificaNumero(),
    const RegisterEmail(),
    const RegisterPassword(),
    const RegisterNameYLastName(),
    // const RegisterPage_1(),
    // AgregarTarjetaPage(),
    // ActivarUbicacion(),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 0,
      length: listPage.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              _Page(tabController: _tabController, listPage: listPage),
              _Dots(listPage: listPage, controller: _tabController),
              _Buttons(tabController: _tabController),
            ],
          ),
        ),
      ),
    );
  }
}

class _Page extends StatelessWidget {
  const _Page({
    Key? key,
    required TabController tabController,
    required this.listPage,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;
  final List<Widget> listPage;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: listPage,
      ),
    );
  }
}

class _Buttons extends StatefulWidget {
  const _Buttons({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  __ButtonsState createState() => __ButtonsState();
}

class __ButtonsState extends State<_Buttons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {
              if (widget._tabController.index < 1)
                Navigator.of(context).pop();
              else
                widget._tabController.index--;
              setState(() {});
            },
            child: const Padding(padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1), child: Text('Anterior')),
          ),
          ElevatedButton(
            onPressed: () {
              if (widget._tabController.index > 3)
                Navigator.of(context).pushReplacementNamed('/privacyAgree');
              else
                widget._tabController.index++;
              setState(() {});
            },
            child: const Padding(padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1), child: Text('Siguiente')),
          ),
        ],
      ),
    );
  }
}

class _Dots extends StatefulWidget {
  final List<Widget> listPage;
  final TabController controller;

  const _Dots({Key? key, required this.listPage, required this.controller}) : super(key: key);

  @override
  __DotsState createState() => __DotsState();
}

class __DotsState extends State<_Dots> {
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      setState(() {
        print('page index: ${widget.controller.index}');
      });
    });
  }

  @override
  void dispose() {
    widget.controller.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.listPage.asMap().entries.map((entry) {
        return GestureDetector(
          onTap: () => widget.controller.index = entry.key,
          child: Container(
            width: 12.0,
            height: 12.0,
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: (Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black)
                    .withOpacity(widget.controller.index == entry.key ? 0.9 : 0.4)),
          ),
        );
      }).toList(),
    );
  }
}
