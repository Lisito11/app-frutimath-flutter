import 'package:flutter/material.dart';
import 'package:fruti_math/ui/pages/level_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      GridView.count(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        crossAxisCount: 2,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return LevelPage();
              }));
            },
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                margin: EdgeInsets.all(15),
                elevation: 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: ListView(
                    children: <Widget>[
                      Container(
                          height: 130.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/suma.png'),
                                fit: BoxFit.cover),
                          )),
                      Container(
                          child: Center(
                              child: Text(
                        'SUMAS',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        ),
                      )))
                    ],
                  ),
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return LevelPage();
              }));
            },
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                margin: EdgeInsets.all(15),
                elevation: 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Column(
                    children: <Widget>[
                      Container(
                          height: 130.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/resta.png'),
                                fit: BoxFit.cover),
                          )),
                      Container(
                          child: Center(
                              child: Text(
                        'RESTAS',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        ),
                      )))
                    ],
                  ),
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return LevelPage();
              }));
            },
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                margin: EdgeInsets.all(15),
                elevation: 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Column(
                    children: <Widget>[
                      Container(
                          height: 130.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/multiplicacion.png'),
                                fit: BoxFit.cover),
                          )),
                      Container(
                          child: Center(
                              child: Text(
                        'MULTIPLICACIÓN',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        ),
                      )))
                    ],
                  ),
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return LevelPage();
              }));
            },
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                margin: EdgeInsets.all(15),
                elevation: 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Column(
                    children: <Widget>[
                      Container(
                          height: 130.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/division.png'),
                                fit: BoxFit.cover),
                          )),
                      Container(
                          child: Center(
                              child: Text(
                        'DIVISIÓN',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        ),
                      )))
                    ],
                  ),
                )),
          ),
        ],
      ),
      InkWell(
        onTap: (){
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return LevelPage();
              }));
        }, child:Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          margin: EdgeInsets.all(15),
          elevation: 10,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Column(
              children: <Widget>[
                Container(
                    height: 170.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/x.png'), fit: BoxFit.cover),
                    )),
              ],
            ),
          )),),
    ]);
  }
}
