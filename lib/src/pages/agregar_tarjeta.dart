import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:ramayo_client_app/src/pages/controllers/agregar_tarjeta_controller.dart';

class AgregarTarjetaPage extends StatefulWidget {
  @override
  _AgregarTarjetaPageState createState() => _AgregarTarjetaPageState();
}

class _AgregarTarjetaPageState extends State<AgregarTarjetaPage> {

  AgregarTarjetaController _controller = new AgregarTarjetaController();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      _controller.init(context);
    });
  }


  String inicial = 'Mexico';
  String numerotarjeta = '';
  String cvv = '';
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          Icons.west,
          color: Colors.black,
          size: 30.0,
        ),
        elevation: 0,
        title: const Text(
          'Agregar tarjeta',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: _formulario(),
        ),
      ),
    );
  }

  Widget _formulario() {
    return Form(
      key: _formkey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            const Text(
              'Numero de tarjeta',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            
            const SizedBox(height: 5.0),
            
            Container(
              height: 40.0,
              color: Colors.grey[200],
              padding: const EdgeInsets.only(left: 5.0, right: 5.0),
              child: TextFormField(
                onChanged: (value) {
                  numerotarjeta = value;
                },
                keyboardType: TextInputType.number,
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(5.0),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.credit_card,
                    color: Colors.red,
                    size: 30.0,
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 15.0),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Exp. date',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Container(
                      height: 40.0,
                      width: 172.0,
                      color: Colors.grey[200],
                      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 6.0),
                          border: InputBorder.none,
                          hintText: 'mm/yy',
                          hintStyle: TextStyle(
                            color: Colors.black38,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'CVV',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Container(
                      height: 40.0,
                      width: 172.0,
                      color: Colors.grey[200],
                      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                      child: TextFormField(
                        onChanged: (value) {
                          cvv = value;
                        },
                        keyboardType: TextInputType.number,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 6.0),
                          border: InputBorder.none,
                          hintText: '123',
                          hintStyle: TextStyle(
                            color: Colors.black38,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            
            const SizedBox(height: 30.0),
            
            _seleccionPais(),
            
            const SizedBox(height: 15.0),
            
            const Text(
              'Codigo postal',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            
            const SizedBox(height: 5.0),
            
            Container(
              height: 40.0,
              color: Colors.grey[200],
              padding: const EdgeInsets.only(left: 5.0, right: 5.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 8.0),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.number,
                style: const TextStyle(color: Colors.black),
              ),
            ),
            
            _botonGuardar(),
          ],
        ),
      ),
    );
  }

  Container _seleccionPais() {
    return Container(
      height: 40.0,
      width: double.infinity,
      color: Colors.grey[200],
      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
      child: DropdownButton<String>(
        underline: Container(
          height: 0,
          color: Colors.transparent,
        ),
        value: inicial,
        icon: const Icon(
          Icons.arrow_drop_down,
          color: Colors.black,
        ),
        iconSize: 35,
        dropdownColor: Colors.white,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w300,
          fontSize: 18.0,
        ),
        isExpanded: true,
        onChanged: (String? newValue) {
          setState(() {
            inicial = newValue!;
          });
        },
        items: <String>['Mexico', 'Argentina', 'Colombia', 'Peru']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }

  Padding _botonGuardar() {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          animationDuration: const Duration(milliseconds: 500),
          elevation: 2,
          minimumSize: const Size(double.infinity, 40.0),
          onSurface: Colors.white,
          enableFeedback: true,
        ),
        onPressed: _controller.goToUbicationPage,
        child: const Text('Guardar'),
      ),
    );
  }


}
