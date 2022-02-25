import 'package:flutter/material.dart';

class ScrollDesing extends StatelessWidget {
  const ScrollDesing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: PageView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        children: [
          widgetUno(),
          widgetDos(), 
        ],
      ),
    );
  }
}

class widgetDos extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return Container( 
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          style: TextButton.styleFrom(backgroundColor: Colors.blue, elevation: 5, padding:const  EdgeInsets.all(10)),
          onPressed: (){},
          child:const Text('Regresar', style: TextStyle(color: Colors.white,fontSize: 30)
          )),
      ),
    );
  }
}

class widgetUno extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //background
        Background(),
        //Texto en columna
        ColumnText(),
      ],
    );
  }
}

class ColumnText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(fontSize: 60,color: Colors.white, fontWeight: FontWeight.bold);
    var textStyle2 = const TextStyle(fontSize: 45,color: Colors.white, fontWeight: FontWeight.bold);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20,),
          Text('11°',style:  textStyle,),
          Text('Miercoles',style:  textStyle2,),
          Expanded(child:Container()),
          const Icon(Icons.keyboard_arrow_down_outlined, color: Colors.white, size: 80,)

        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        alignment: Alignment.topCenter,
        color: const Color(0xff30BAD6),
        child: const Image(image: AssetImage('assets/scroll-1.png')));
  }
}
