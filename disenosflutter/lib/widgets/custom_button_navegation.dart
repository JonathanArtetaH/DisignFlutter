

import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar( 
      showUnselectedLabels: false,
      showSelectedLabels: false,
      selectedItemColor: Colors.pink, 
      backgroundColor:const  Color.fromRGBO(55,57,84,1),
      unselectedItemColor:const Color.fromRGBO(116,117,152,1),
      currentIndex: 0,
      items: const[
        BottomNavigationBarItem(
          icon: Icon(Icons.perm_contact_calendar),
          label:  'Hola mundo',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label:  'Usuarios',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt_long_sharp),
          label:  'GRafica',
        )
      ],
      );
  }
}