import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
   
  const CardTable({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FixedColumnWidth(180), 
        1: FixedColumnWidth(180), 
      },
      children: const [
        TableRow(
          children: [
            _SingleCard(color: Colors.blue, icons: Icons.pie_chart_outline_sharp, text: 'General'), 
            _SingleCard(color: Colors.pinkAccent, icons: Icons.car_rental, text: 'Transport'),  
          ]
        ), 
        TableRow(
          children: [
            _SingleCard(color: Colors.blue, icons: Icons.shop, text: 'Shopping'), 
            _SingleCard(color: Colors.purpleAccent, icons: Icons.cloud, text: 'Bill'),  
          ]
        ), 
        TableRow(
          children: [
            _SingleCard(color: Colors.deepPurple, icons: Icons.movie, text: 'Entretaiment'), 
            _SingleCard(color: Colors.pinkAccent, icons: Icons.local_grocery_store, text: 'Grocery'),  
          ]
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icons;
  final Color color;
  final String text;
  
  const _SingleCard({
    Key? key, 
    required this.icons, 
    required this.color, 
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return _CardBackground(
      widget: Column( // esto es un metodo de la clase privada que cree _CardBackground
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 30,
            child: Icon(icons, size: 35, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(text, style: TextStyle(color: color, fontSize: 18))
        ],
      )
    );
  }
}

class _CardBackground extends StatelessWidget {

  final Widget widget;
  const _CardBackground({
    Key? key,
    required this.widget
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15), // coloque el margen aqui para que me pueda seccionar bien el blur y no se sobre salga
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20), // vuelvo a colorcar el border aqui porque se sobre sale, lo mismo pasa en CSS3 y HTML5
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Center(// le agrege el center para poderlo manejar con e with de otro modo no se podia
            child: Container(
              // margin: const EdgeInsets.all(15),
              height: 180,
              width: 170,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20),
              ), 
              child: widget,
            ),
          ),
        ),
      ),
    );
  }
}

// class _SingleCards extends StatelessWidget { // para pruebas para probar que agregando center me permitia tomar el ancho de otro modo me agarraba el maximo ancho
//   const _SingleCards({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         height: 32,
//         width: 32,
//         color: Colors.orange,
//       ),
//     ); 
//   }
// }

