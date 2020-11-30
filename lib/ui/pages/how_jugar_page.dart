import 'package:flutter/material.dart';
import 'package:fruti_math/ui/pages/home_page.dart';
import 'package:submit_button/submit_button.dart';

var logowletters = "assets/logo21.png";

class HowJugarPage extends StatefulWidget {
  @override
  _HowJugarPageState createState() => _HowJugarPageState();
}

class _HowJugarPageState extends State<HowJugarPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          Image.asset(logowletters),
          InkWell(
            onTap: () {},
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.all(15),
                elevation: 10,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                            child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(children: [Text(
                                  "👾Modos de juego👾\n\n🔹SUMAS\n🔹RESTAS\n🔹MULTPLICACIONES\n🔹DIVISIONES\n🔹MODO ALEATORIO",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.15),
                                )])  ),))),
          ),
          InkWell(
            onTap: () {},
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.all(15),
                elevation: 10,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(children: [
                            Text(
                              "🎮¿Cómo Jugar?🎮",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.15),
                            ),
                            Text(
                              "\nDespués de elegir un modo de juego👀 saldrán frutas que representan un número, del 0-9... Entonces deberás realizar la operación que se pida para completar el siguiente desafío.🥳",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.15),
                            ),

                          ],)
                      ),))),
          ),
          InkWell(
            onTap: () {},
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.all(15),
                elevation: 10,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(children: [
                            Text(
                              "✅Puntaje✅",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.15),
                            ),
                            Text(
                              "\nPor cada desafío que completes correctamente ganarás puntos. Trata de ser el mejor y aprender mucho para alcanzar el puntaje más alto⭐🤩",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.15),
                            ),

                          ],)
                      ),))),
          ),
          InkWell(
            onTap: () {},
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.all(15),
                elevation: 10,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(children: [
                            Text(
                              "🥑Vidas🥑",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.15),
                            ),
                            Text(
                              "\nTendrás un total de 3 vidas🥑. Por cada desafío en el que te equivoques perderás una vida, trata de no equivocarte y alcanzar el mayor puntaje✅",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.15),
                            ),

                          ],)
                      ),))),
          ),
          SubmitButton (
            isLoading: false,
            spinnerColor: Theme.of(context).accentColor,
            backgroundColor: Theme.of(context).primaryColor,
            button: FlatButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                },
                child: Text("¡ Y A   S É   J U G A R !",
                    style: TextStyle(color: Colors.white))),
          ),
        ],
      ),
    );
  }
}
