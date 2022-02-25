import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container( 
        width: double.infinity, 
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:const [
            SizedBox(height: 20,),
            Text('Classify transaction', style: TextStyle(color: Colors.white, fontSize: 22,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text('Classify this transaction into a particular category', style: TextStyle(color: Colors.white),)
          ],      
        ),
      ),
    );
  }
}