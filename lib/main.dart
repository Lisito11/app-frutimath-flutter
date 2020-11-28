import 'package:flutter/material.dart';
import 'package:fruti_math/ui/pages/home_page.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

final logo = "assets/logo.png";
final logoLetters = "assets/letters2.png";

const spinkit = SpinKitRotatingCircle(
  color: Colors.white,
  size: 50.0,
);
final spinkit2 = SpinKitFadingCircle(
  itemBuilder: (BuildContext context, int index) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: index.isEven ? Colors.red : Colors.indigo,
      ),
    );
  },
);


void main() {
  runApp(MaterialApp(
    title: 'Fruti Math',
    theme: ThemeData(
      primarySwatch: Colors.indigo,
      accentColor: Colors.redAccent,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(
          builder: (context) => HomePage()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(logo),
          Image.asset(logoLetters),
          spinkit2,
        ],
      ),

    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Fruti Math',
//       theme: ThemeData(
//         primarySwatch: Colors.indigo,
//         accentColor: Colors.redAccent,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'Fruti+Math'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
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
