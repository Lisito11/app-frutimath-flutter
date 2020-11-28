import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fruti+Math'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Ayuda',
        child: Icon(Icons.contact_support),
      ),
      body: Center(
        child: Text('Hola'),
      ),
    );
  }
}
