import 'package:flutter/material.dart';
class LevelPage extends StatefulWidget {
  @override
  _LevelPageState createState() => _LevelPageState();
}

class _LevelPageState extends State<LevelPage> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/levels.png'), fit: BoxFit.contain),
          )),
    );
  }
}
