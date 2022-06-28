import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
   
  const ScrollScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack( // stack permite colocar widgets uno encima del otro
        children: const [
          BackGround(),

          MainContent(),


        ],
      ),
    );
  }
}


class BackGround extends StatelessWidget {
  const BackGround({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF50C2DD), // OJO para el codigo exahesimal agregar 0xff
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(image: AssetImage('assets/scroll-1.png'))
    );
  }
}
class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea( // protege la aprte de arriba y la parte de abajo del overflow en los dispositivos
      bottom: false, // aqui le digo al safearea que no me proteja la parte de abajo
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30), // para dejar un poco mas de espacio arriba
          const Text('11°', style: textStyle),
          const Text('Miercoles', style: textStyle),
          Expanded(child: Container()), // se usa para expandri todo lo que puede como una bomba, colorea el container de rojo para que lo veas
          const Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white)
        ],
      ),
    );
  }
}