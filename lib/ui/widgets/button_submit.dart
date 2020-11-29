import 'package:flutter/material.dart';
import 'package:submit_button/submit_button.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _loading = false;

  void _submit() {
    setState(() {
      _loading = true;
    });

    Future.delayed(Duration(milliseconds: 5000), () {
      setState(() {
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
            children: [
              SubmitButton(
                isLoading: _loading,
                spinnerColor: Colors.green,
                backgroundColor: Colors.red,
                button: FlatButton(onPressed: _submit, child: Text("Submit")),
              ),
            ],
          )),
    );
  }
}
