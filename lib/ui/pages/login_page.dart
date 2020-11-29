import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruti_math/ui/pages/home_page.dart';
import 'package:submit_button/submit_button.dart';
import 'package:fruti_math/models/jugador_model.dart';

final logo = "assets/logo.png";
final logoLetters = "assets/letters2.png";
GlobalKey<FormState> formContactoKey = GlobalKey<FormState>();
GlobalKey<ScaffoldState> formPageKey = GlobalKey<ScaffoldState>();

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _nicknameController;
  JugadorModel _jugador = new JugadorModel();
  bool _loading = false;

  void _submit() {
    if(validateAll()){
      setState(() {
        _loading = true;
        //Navigator.pushNamed(context, 'home_page',);
        Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => HomePage(jugador: _jugador),
        ));
      });

      Future.delayed(Duration(milliseconds: 5000), () {
        setState(() {
          _loading = false;
        });
      });
    }else{

    }

  }

  @override
  void initState() {
    super.initState();
    _nicknameController = TextEditingController(text: "");
  }

  String validate(String value, String key) =>
      value.isEmpty ? 'Escribe tu $key' : null;

  bool validateAll() {
    if (formContactoKey.currentState.validate()) {
      return true;
    } else {
      formPageKey.currentState.showSnackBar(
          SnackBar(content: Text('Escribe todos los datos necesarios')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        key: formPageKey,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('FRUTI+MATH'),
        ),
        body: SingleChildScrollView(
            child: Form(
                key: formContactoKey,
                child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(logo),
                        TextFormField(
                          // ignore: deprecated_member_use
                          inputFormatters: [
                            WhitelistingTextInputFormatter(
                                RegExp("[A-Z a-z]"))
                          ],
                          validator: (value) => validate(value, 'Nombre'),
                          decoration: InputDecoration(
                              hintText: 'Escribe tu nombre',
                              prefixIcon: Icon(Icons.person),
                              labelText: "Jugador",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor))),
                          onChanged: (value) => _jugador.nickName = value,
                          controller: _nicknameController,
                        ),
                        SubmitButton(
                          isLoading: _loading,
                          spinnerColor: Theme.of(context).accentColor,
                          backgroundColor: Theme.of(context).primaryColor,
                          button: FlatButton(
                              onPressed: _submit,
                              child: Text("Ingresar",
                                  style: TextStyle(color: Colors.white))),
                        ),
                        Text("¡Vamos a aprender matemáticas!")
                      ],
                    )))));
  }
}
