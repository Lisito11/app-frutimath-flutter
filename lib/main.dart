import 'package:flutter/material.dart';
import 'package:fruti_math/ui/pages/home_page.dart';
import 'package:fruti_math/ui/pages/login_page.dart';
import 'package:fruti_math/ui/pages/splash_screen_page.dart';

final logo = "assets/logo.png";
final logoLetters = "assets/letters2.png";



void main() {
  runApp(MaterialApp(
    routes: {
      'home_page': (context) => HomePage(),
      'login_page': (context) => LoginPage()
    },
    title: 'Fruti Math',
    theme: ThemeData(
      primarySwatch: Colors.indigo,
      accentColor: Colors.redAccent[400],
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: SplashScreen(),
  ));
}





//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){},
//         tooltip: 'Ayuda',
//         child: Icon(Icons.contact_support),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
