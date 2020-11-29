import 'package:flutter/material.dart';
import 'package:fruti_math/models/jugador_model.dart';
import 'package:fruti_math/ui/pages/jugador_page.dart';
import 'package:fruti_math/ui/pages/main_page.dart';
import 'package:fruti_math/ui/pages/how_jugar_page.dart';
import 'package:fruti_math/ui/pages/settings_page.dart';
import 'package:fruti_math/ui/pages/info_page.dart';

class HomePage extends StatefulWidget {
  JugadorModel jugador;
  HomePage({Key key,  @required this.jugador}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int picker;
  List<Widget> pages = [
    MainPage(),
    JugadorPage(),
    HowJugarPage(),
    SettingsPage(),
    InfoPage()
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    picker = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        title: Text('FRUTI+MATH'),
      ),
      drawer: Drawer(
          child: ListView(children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/header.png"),
                  fit: BoxFit.cover)),
          child: Text("Jugador: Lisanny")
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Inicio'),
          onTap: () {
            setState(() {
              Navigator.pop(context);
              picker = 0;
            });
          },
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Jugador'),
          onTap: () {
            setState(() {
              Navigator.pop(context);
              picker = 1;
            });
          },
        ),
        ListTile(
          leading: Icon(Icons.videogame_asset),
          title: Text('¿Cómo Jugar?'),
          onTap: () {
            setState(() {
              Navigator.pop(context);
              picker = 2;
            });
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Ajustes'),
          onTap: () {
            setState(() {
              Navigator.pop(context);
              picker = 3;
            });
          },
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text('Acerca de'),
          onTap: () {
            setState(() {
              Navigator.pop(context);
              picker = 4;
            });
          },
        ),
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
           picker = 2;
          });
        },
        tooltip: 'Ayuda',
        child: Icon(Icons.help),
      ),
      //
      body: pages[picker],
    );
  }
}
