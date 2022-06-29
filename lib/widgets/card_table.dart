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
    return Center(// le agrege el center para poderlo manejar con e with de otro modo no se podia
      child: Container(
        margin: const EdgeInsets.all(15),
        height: 180,
        width: 170,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20),
        ), 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: color,
              radius: 30,
              child: Icon(icons, size: 35),
            ),
            const SizedBox(height: 10),
            Text(text, style: TextStyle(color: Colors.blue, fontSize: 18),)
          ],
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

