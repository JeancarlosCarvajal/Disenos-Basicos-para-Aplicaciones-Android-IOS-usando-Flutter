import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          // imagen central
          const Image(image: AssetImage('assets/landscape.jpg')),
          
          // titulo
          const Title(),

          // bottom section
          const BottomSection(),

          //Descripcion
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text('Labore qui quis ipsum pariatur ex et aliquip voluptate non eu. Dolor amet dolor ullamco commodo nisi in dolore magna sit laboris est minim quis. Aliquip reprehenderit adipisicing excepteur elit dolor. Id fugiat proident ipsum est amet velit culpa exercitation voluptate ea veniam. Ad sit Lorem aliquip eiusmod ut culpa esse.')
          )


        ],
      )
    );
  }
}


class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( // para darle margin
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Hola mundo soy el siguiente elemento',
                style: TextStyle( fontWeight: FontWeight.bold )), 
              Text('contenido del titulo', style: TextStyle(color: Colors.black45)), 
            ]
          ), 
          Expanded(child: Container()), 
          const Icon(Icons.star, color: Colors.red),
          const Text('41')
        ],
      ),
    );
  }
}


class BottomSection extends StatelessWidget {
  const BottomSection({
    Key? key,
  }) : super(key: key);

  final Color blue = Colors.blue;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomBottom(blue: blue, icon: Icons.call, text: 'CALL'),
          CustomBottom(blue: blue, icon: Icons.send_rounded, text: 'ROUTE'),
          CustomBottom(blue: blue, icon: Icons.share, text: 'SHARE'), 
        ],
      ),
    );
  }
}

class CustomBottom extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomBottom({
    Key? key,
    required this.blue, 
    required this.icon, 
    required this.text,
  }) : super(key: key);

  final Color blue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: blue),
        Text(text, style: TextStyle(color: blue))
      ],
    );
  }
}