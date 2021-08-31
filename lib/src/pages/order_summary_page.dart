import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderSummaryPage extends StatefulWidget {
  const OrderSummaryPage({Key? key}) : super(key: key);

  @override
  _OrderSummaryPageState createState() => _OrderSummaryPageState();
}

class _OrderSummaryPageState extends State<OrderSummaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Container(
            height: 90,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xff00d6af)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ))),
              onPressed: () {},
              child: const Text(
                'Hacer pedido - \$ 609.00',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [closeButton(), column(context)],
            ),
          ),
        ));
  }

  Widget column(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerText("Hamburguesa con queso"),
          const SizedBox(
            height: 4,
          ),
          map(),
          const SizedBox(
            height: 20,
          ),
          address(),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 2,
            indent: 55,
          ),
          const SizedBox(
            height: 10,
          ),
          deliveryNote(),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 2,
            indent: 55,
          ),
          const SizedBox(
            height: 10,
          ),
          timeText(),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          articles(),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          checkboxRow(),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          promoCode(),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          totalMoney()
        ],
      ),
    );
  }

  Widget closeButton() {
    return Container(
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.times),
            iconSize: 60,
          ),
        ],
      ),
    );
  }

  Widget headerText(String text) {
    return Container(
      child: Text(text,
          style: const TextStyle(fontSize: 27, fontWeight: FontWeight.w900)),
    );
  }

  //THIS WILL BE THE FUNCTION FOR THE MAP YOU CAN REPLACE THE CONTAINER I JUST WANTED TO
  //SHOW YOU THIS HIGHT OF THE MAP WILL BE LIKE THIS
  Widget map() {
    return Container(
      height: 100,
      color: Colors.grey,
    );
  }

  Widget address() {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          const Icon(
            FontAwesomeIcons.mapMarkerAlt,
            size: 35,
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(child: addressText()),
          // const Spacer(
          //   flex: 1,
          // ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 30,
          ),
        ],
      ),
    );
  }

  Widget deliveryNote() {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          const Icon(
            FontAwesomeIcons.carAlt,
            size: 35,
          ),
          const SizedBox(
            width: 20,
          ),
          deliveryNoteText(),
          const Spacer(
            flex: 1,
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 30,
          ),
        ],
      ),
    );
  }

  Widget addressText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Calle 20 \#187",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
        ),
        const SizedBox(
          height: 2,
        ),
        const Text(
          "san pedro cholul 97138 Merida, Yuc.",
          style: TextStyle(
              color: Colors.grey, fontWeight: FontWeight.w600, fontSize: 15),
        )
      ],
    );
  }

  Widget deliveryNoteText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Esperar afuera",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
        ),
        const SizedBox(
          height: 2,
        ),
        const Text(
          "Agregar una nota de entrega",
          style: TextStyle(
              color: Color(0xff00d6af),
              fontWeight: FontWeight.w600,
              fontSize: 15),
        )
      ],
    );
  }

  Widget timeText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Tiempo de Entrega",
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800),
        ),
        const Text("15-25 min",
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800))
      ],
    );
  }

  Widget articles() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Tus Articulos",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800)),
          const SizedBox(
            height: 10,
          ),
          articleList()
        ],
      ),
    );
  }

  Widget articleList() {
    return Container(
      child: Row(
        children: [
          // for the number 2
          Container(
            color: Colors.grey.withOpacity(0.25),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text(
              "2",
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
            ),
          ),
          const SizedBox(
            width: 20,
          ),

          //this is for the order

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hamburguesa con queso",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                "Mediano",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              )
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          const Text(
            "\$570.00",
            style: const TextStyle(fontSize: 17),
          )
        ],
      ),
    );
  }

  bool? result = false;

  Widget checkboxRow() {
    return Row(
      children: [
        Container(
          color: Colors.grey.withOpacity(0.20),
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              const Text(
                "Pide cubiertos, etc.",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                width: 3,
              ),
              Transform.scale(
                scale: 1.3,
                child: Theme(
                  data: ThemeData(unselectedWidgetColor: Colors.grey),
                  child: Checkbox(
                      side: const BorderSide(width: 3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3)),
                      value: result,
                      onChanged: (bool? value) {
                        setState(() {
                          this.result = value;
                        });
                      }),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget promoCode() {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          const Icon(
            Icons.local_offer,
            size: 30,
          ),
          const SizedBox(
            width: 15,
          ),
          const Text("Agregar un codigo promo",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
          const Spacer(
            flex: 1,
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 30,
          ),
        ],
      ),
    );
  }

  Widget totalMoney(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Subtotal",style: TextStyle(fontSize: 20,color: Colors.grey),),
            const Text("\$ 570.00",style: TextStyle(fontSize: 20,color: Colors.grey),)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Tarifas",style: TextStyle(fontSize: 20,color: Colors.grey),),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Servicio",style: TextStyle(fontSize: 20,color: Colors.grey),),
            const Text("\$ 4.00",style: TextStyle(fontSize: 20,color: Colors.grey),)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Entrega",style: TextStyle(fontSize: 20,color: Colors.grey),),
            const Text("\$ 35.00",style: TextStyle(fontSize: 20,color: Colors.grey),)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Total",style: TextStyle(fontSize: 20,color: Colors.grey),),
            const Text("\$ 609.00",style: TextStyle(fontSize: 20,color: Colors.grey),)
          ],
        ),
      ],
    );
  }


}
