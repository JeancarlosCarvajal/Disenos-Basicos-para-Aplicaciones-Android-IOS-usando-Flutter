import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
   
  const ScrollScreen({Key? key}) : super(key: key);

  final boxDecoration = const BoxDecoration( // cree esta variable automaticamente aqui para que se vea mejor mi scaffold
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.5, 0.5], // los dos empiezan a la mitad de la pantalla
      colors: [
        Color(0xFF7AECCB),
        Color(0xFF50C2DD)
      ])
  );

  @override
  Widget build(BuildContext context) {

    return Scaffold( 
      body: Container(// lo agrege para hacer el gradiente
        decoration: boxDecoration,
        child: PageView(
          physics: const BouncingScrollPhysics(), // para que me pase las paginas moviendo el dedo a los lados de la pantalla
          scrollDirection: Axis.vertical, // establece el scroll que sea vertical
          children: const [
            Page1(),
            Page2()
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack( // stack permite colocar widgets uno encima del otro
      children: const [
        BackGround(),

        MainContent(),


      ],
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

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF50C2DD),
      child: Center(
        child: TextButton(
          onPressed: (){},
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xFF00A2FF),
            shape: const StadiumBorder()
          ), 
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text('Buenvenido', style: TextStyle(color: Colors.white, fontSize: 30, )),
          ),
        ),
      ),
    );
  }
}