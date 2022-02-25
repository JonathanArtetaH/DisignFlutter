
import 'package:flutter/material.dart';

class BasacDesingScreen extends StatelessWidget {
  const BasacDesingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Image(image: AssetImage('assets/fondoUno.jpg')),
          SizedBox(
            height: 20,
          ),
          Title(),
          ButtonsIcons(),
          Descripcion()
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Esta es una imagend de un paisaje de ejemplo',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              Text(
                'Este es el subtitle debajo del titulo',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41')
        ],
      ),
    );
  }
}

class ButtonsIcons extends StatelessWidget {
  const ButtonsIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 38, vertical: 26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const[
          CustombuttonIcos(
            title: 'Call',
            icono: Icons.call,
          ),
          CustombuttonIcos(
            title: 'Route',
            icono: Icons.room_outlined,
          ),
          CustombuttonIcos(
            title: 'Share',
            icono: Icons.share,
          ),
        ],
      ),
    );
  }
}

class CustombuttonIcos extends StatelessWidget {
  final String title;
  final IconData icono;
  const CustombuttonIcos({
    Key? key,
    required this.title,
    required this.icono,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icono,
          color: Colors.blue,
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}


class Descripcion extends StatelessWidget {
  const Descripcion({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
      child: Column(
        children:[
          Container(
            margin:const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child:  
              const Expanded(child: Text('Incididunt in dolore voluptate elit fugiat quis nostrud proident pariatur commodo est. Lorem amet et duis minim   Officia cillum nulla ullamco occaecat ullamco aliquip. Cillum deserunt ipsum Lorem aute cupidatat. Mollit occaecat proident ullamco commodo ex enim labore nulla qui nisi ea commodo officia consequat. Elit consectetur aute irure qui amet ex. Labore veniam Lorem qui laborum quis eiusmod reprehenderit labore excepteur eu excepteur. Velit labore nisi aliquip commodo qui ullamco esse quis. Anim officia occaecat reprehenderit ea est laborum aliquip.')),
          ),
        ],
      ),
    );
  }
}