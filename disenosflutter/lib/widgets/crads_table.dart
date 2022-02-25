

import 'package:flutter/material.dart';

class CardsTable extends StatelessWidget {
  const CardsTable({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children:const [
        TableRow(
          children: [
             SigleCard(colorFondoIcono: Colors.amber,colorTexto: Colors.white,icono: Icons.access_alarm_rounded,titulo: 'Time',),  
             SigleCard(colorFondoIcono: Colors.white,colorTexto: Colors.green,icono: Icons.access_alarm_rounded,titulo: 'Trasport',),  
          ]
        ),
        TableRow(
          children: [
             SigleCard(colorFondoIcono: Colors.purple,colorTexto: Colors.white,icono: Icons.wrong_location_sharp,titulo: 'Shopping',),  
             SigleCard(colorFondoIcono: Colors.orange,colorTexto: Colors.white,icono: Icons.zoom_out_map_outlined,titulo: 'Trasport',),  
          ]
        ),
        TableRow(
          children: [
             SigleCard(colorFondoIcono: Colors.purple,colorTexto: Colors.white,icono: Icons.accessibility_new_rounded,titulo: 'Time',),  
             SigleCard(colorFondoIcono: Colors.blue,colorTexto: Colors.white,icono: Icons.wrap_text_sharp,titulo: 'Trasport',),  
          ]
        ),
        TableRow(
          children: [
             SigleCard(colorFondoIcono: Colors.amber,colorTexto: Colors.white,icono: Icons.access_alarm_rounded,titulo: 'Time',),  
             SigleCard(colorFondoIcono: Colors.white24,colorTexto: Colors.green,icono: Icons.access_alarm_rounded,titulo: 'Trasport',),  
          ]
        )
      ],      
    );
  }
}

class SigleCard extends StatelessWidget { 
  final String titulo;
  final Color colorTexto;
  final Color colorFondoIcono;
  final IconData icono;

  const SigleCard({Key? key,
  required this.titulo,
  required this.colorTexto,
  required this.icono,
  required this.colorFondoIcono}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {  
    return _CardBackground(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              CircleAvatar(
              backgroundColor:colorFondoIcono,
              child: Icon(icono,size: 30, color: colorTexto),
              radius: 20,
            ),
             const SizedBox(height: 15),
            Text(titulo,style: TextStyle(color: colorFondoIcono, fontSize: 16),)
          ],
        ));
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground({ Key? key,required this.child }) : super(key: key); 
  @override
  Widget build(BuildContext context) {
    return Container(
        margin:const EdgeInsets.all(15), 
        height: 130,
        decoration: BoxDecoration(
          color:const Color.fromRGBO(62, 66, 107,0.7),
          borderRadius: BorderRadius.circular(20),
        ),
        child: child,
    );
  }
}