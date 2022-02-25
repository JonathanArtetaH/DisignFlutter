
import 'package:flutter/material.dart'; 
import 'package:disenosflutter/screens/screens.dart';
import 'package:flutter/services.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'homeScreen',
      routes: {
        'homeScreen': (_) => const HomeScreen(),
        'basicDesing': (_) => const BasacDesingScreen(),
        'scrollDesing': (_) =>const ScrollDesing(),
      },
    );
  }
}

// class TempHomeScreen extends StatelessWidget {
//   const TempHomeScreen({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children:const [
//         Text('HolaMundo')
//       ],
//     );
//   }
// }