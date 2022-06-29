import 'package:flutter/material.dart';
import 'dart:math';

class Background extends StatelessWidget {
   
  const Background({Key? key}) : super(key: key);
  
  final boxDecoration = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.2, 0.8], // 1 implica toda la pantallla en la parte de abajo
      colors: [
        Color(0xFF2e305f),
        Color(0xFF202333)
      ]
    )
  );
 
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Purple Gradiente Background
        Container(  decoration: boxDecoration ),

        //Pink box, es como position relative o absolute en css3
        Positioned(
          top: -100,
          left: -30,
          child: _PinkBox()
        ),

      ],
    );
  }
 
}

class _PinkBox extends StatelessWidget {
   
  const _PinkBox({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5, // hay que importar la libreria de math, le quite el math al math.pi y me dio la opcion de agregar libreria math
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(251, 142, 172, 1),
            ] 
          ),
        ),
      ),
    );
  }
}