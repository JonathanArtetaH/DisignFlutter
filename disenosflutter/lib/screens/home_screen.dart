
import 'package:flutter/material.dart';
import 'package:disenosflutter/widgets/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          //background
          const BackGround(),

          _HomeBody(),
        ],
      ),
      bottomNavigationBar:const  CustomNavigationBar() ,
    );
  }
}

class _HomeBody extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const[
          // Titulos
          PageTitle(),

          //Cards table
          CardsTable(),
        ],
      ),
    );
  }
}