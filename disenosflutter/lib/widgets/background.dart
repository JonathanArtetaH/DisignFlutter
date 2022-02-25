import 'dart:math';

import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  const BackGround({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const boxDecoration = BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.4,0.8],
          colors: [
            Color(0xff2E305F),
            Color(0xff202333)]
        )
      );
    
    return Stack( 
      children:[
        Container(
        //fondo
        decoration:boxDecoration,
      ),
      
      Positioned(top: -100,child: _pinkBox()),
      ]
    );
  }
}

class _pinkBox extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(angle: -pi / 5,
      child: Container(
        width: 360,
        height: 350,
        decoration: BoxDecoration(
          gradient:const LinearGradient(  
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1), 
              ],
          ),
          borderRadius: BorderRadius.circular(80)),
        ),
    );
  }
}