import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
   
  const PageTitle({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SafeArea(
        bottom: false, // para que el safearea no se preocupe por el fondo de la pantalla y me proteja solo arriba
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Clasify Transaction', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
              SizedBox(height: 10,),
              Text('Clasify This Transaction into a particular category',  style: TextStyle(fontSize: 16, color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}