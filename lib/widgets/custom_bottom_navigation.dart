import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
   
  const CustomBottomNavigation({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar( // se deben mandar mas de un Item
    showSelectedLabels: false,// oculta la etiqueta selecicionada
    showUnselectedLabels: false,// oculta la etiqueta NO selecionada
    selectedItemColor: Colors.pink,
    backgroundColor: Color.fromRGBO(55, 57, 84, 1),
    unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
    // currentIndex: 0,// activa el elemento boton del navbar para indicar que esta ubicado alli mostrando el nombre de la etiqueta, se debe setear showSelectedLabels: false para poder usarlo
    items: const [ 
      BottomNavigationBarItem(
        icon: Icon(Icons.calendar_today_outlined),
        label: 'Calendario'
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.pie_chart_outline),
        label: 'Grafica'
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.supervised_user_circle_outlined),
        label: 'Grafica'
      )
    ]
    );
  }
}