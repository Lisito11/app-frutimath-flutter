import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

final logo = "assets/logo.png";
final logoLetters = "assets/letters2.png";

final spinkit = SpinKitFadingCircle(
  itemBuilder: (BuildContext context, int index) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: index.isEven ? Colors.red : Colors.indigo,
      ),
    );
  },
);

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushNamed(context, 'login_page');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(logo),
              Image.asset(logoLetters),
              spinkit,
            ],
          )),
    );
  }
}
